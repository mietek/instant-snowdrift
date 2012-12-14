module Model where

import Prelude
import Yesod
import Data.Text (Text)
import Database.Persist.Quasi

import Data.Time.Clock (UTCTime)
import Data.Int (Int64)

import Model.Currency (Milray)
import Model.Role.Internal (Role)
import Model.Markdown.Diff (MarkdownDiff)

import Yesod.Markdown (Markdown)

-- You can define all of your database entities in the entities file.
-- You can find more information on persistent and how to declare entities
-- at:
-- http://www.yesodweb.com/book/persistent/
share [mkPersist sqlSettings, mkMigrate "migrateAll"]
    $(persistFileWith lowerCaseSettings "config/models")
