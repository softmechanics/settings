{-# LANGUAGE MultiParamTypeClasses, FunctionalDependencies #-}

module Data.Settings where

class Settings a b | a -> b where
  settings :: a -> b
