# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Firestore.V1.Model.CollectionSelector do
  @moduledoc """
  A selection of a collection, such as `messages as m1`.

  ## Attributes

  *   `allDescendants` (*type:* `boolean()`, *default:* `nil`) - When false, selects only collections that are immediate children of the `parent` specified in the containing `RunQueryRequest`. When true, selects all descendant collections.
  *   `collectionId` (*type:* `String.t`, *default:* `nil`) - The collection ID. When set, selects only collections with this ID.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allDescendants => boolean(),
          :collectionId => String.t()
        }

  field(:allDescendants)
  field(:collectionId)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1.Model.CollectionSelector do
  def decode(value, options) do
    GoogleApi.Firestore.V1.Model.CollectionSelector.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1.Model.CollectionSelector do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
