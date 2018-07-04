{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module Main where

import Data.Monoid ((<>))
import Data.Text (Text)
import qualified Data.Text as Text
import Dhall

--snippet:persons
data Person = Person
  { personFirst :: Text
  , personLast :: Text
  } deriving (Show, Generic)
instance Interpret Person

personInput :: Text -> IO [Person]
personInput = input (autoWith opts)
  where
    opts =
      defaultInterpretOptions
        {fieldModifier = Text.toLower . Text.drop 6 }
--snippet:end

--snippet:unions
data FooBarBaz = Foo { foo :: Text} | Bar { bar :: Natural} | Baz deriving (Show, Generic)
instance Interpret FooBarBaz

fooBarBazInput :: Text -> IO [FooBarBaz]
fooBarBazInput = input auto
--snippet:end

--snippet:persons-main
main :: IO ()
main = do
  p <- personInput "../dhall/persons/people"
  print p

-- Results in the following output

{-
  [ Person {personFirst = "Markus", personLast = "Hauck"}
  , Person {personFirst = "Lotte", personLast = "Rie"}
  , Person {personFirst = "Rainer", personLast = "Zufall"}
  ]
-}
--snippet:end
  fbb <- fooBarBazInput "../dhall/unions.dhall"
  print fbb
