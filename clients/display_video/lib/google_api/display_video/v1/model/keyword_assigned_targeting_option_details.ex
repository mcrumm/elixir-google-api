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

defmodule GoogleApi.DisplayVideo.V1.Model.KeywordAssignedTargetingOptionDetails do
  @moduledoc """
  Details for assigned keyword targeting option. This will be populated in the
  details field of an AssignedTargetingOption when
  targeting_type is
  `TARGETING_TYPE_KEYWORD`.

  ## Attributes

  *   `keyword` (*type:* `String.t`, *default:* `nil`) - Required. The keyword, for example `car insurance`.

      Positive keyword cannot be offensive word.
      Must be UTF-8 encoded with a maximum size of 255 bytes. Maximum number
      of characters is 80. Maximum number of words is 10.
  *   `negative` (*type:* `boolean()`, *default:* `nil`) - Indicates if this option is being negatively targeted.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :keyword => String.t(),
          :negative => boolean()
        }

  field(:keyword)
  field(:negative)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.KeywordAssignedTargetingOptionDetails do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.KeywordAssignedTargetingOptionDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.KeywordAssignedTargetingOptionDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end