module Lab1 where

import Prelude
import Data.List (List(..))
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Effect.Console (log)


flip :: forall a b c. (a -> b -> c) -> b -> a -> c
flip f x y = f y x

toString :: Boolean -> String
toString true = "true"
toString _ = "false"

head :: forall a. List a -> Maybe a
head Nil = Nothing
head (Cons x _) = Just x

test:: Effect Unit
test = do
  log $ show $ head (Cons "android" Nil)
