{-# LANGUAGE MultiParamTypeClasses, FunctionalDependencies #-}

module Data.Settings where

-- | Simple lookup indexed by type.
class Settings a where
  settings :: a
  
-- | Key-value lookup.  Useful when there are multiple dependencies on
-- a single type.
class MapSettings a b | a -> b where
  mSettings :: a -> b

-- | Key-value lookup, with multiple values for a single key.
class MultiMapSettings a b where
  mmSettings :: a -> b

