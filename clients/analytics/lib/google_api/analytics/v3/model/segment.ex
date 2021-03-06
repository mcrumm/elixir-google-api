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

defmodule GoogleApi.Analytics.V3.Model.Segment do
  @moduledoc """
  JSON template for an Analytics segment.

  ## Attributes

  *   `created` (*type:* `DateTime.t`, *default:* `nil`) - Time the segment was created.
  *   `definition` (*type:* `String.t`, *default:* `nil`) - Segment definition.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Segment ID.
  *   `kind` (*type:* `String.t`, *default:* `analytics#segment`) - Resource type for Analytics segment.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Segment name.
  *   `segmentId` (*type:* `String.t`, *default:* `nil`) - Segment ID. Can be used with the 'segment' parameter in Core Reporting API.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - Link for this segment.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type for a segment. Possible values are "BUILT_IN" or "CUSTOM".
  *   `updated` (*type:* `DateTime.t`, *default:* `nil`) - Time the segment was last modified.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :created => DateTime.t(),
          :definition => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :segmentId => String.t(),
          :selfLink => String.t(),
          :type => String.t(),
          :updated => DateTime.t()
        }

  field(:created, as: DateTime)
  field(:definition)
  field(:id)
  field(:kind)
  field(:name)
  field(:segmentId)
  field(:selfLink)
  field(:type)
  field(:updated, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.Segment do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.Segment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.Segment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
