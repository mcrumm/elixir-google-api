# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.BigQuery.V2.Model.QueryTimelineSample do
  @moduledoc """


  ## Attributes

  *   `activeUnits` (*type:* `String.t`, *default:* `nil`) - Total number of units currently being processed by workers. This does not correspond directly to slot usage. This is the largest value observed since the last sample.
  *   `completedUnits` (*type:* `String.t`, *default:* `nil`) - Total parallel units of work completed by this query.
  *   `elapsedMs` (*type:* `String.t`, *default:* `nil`) - Milliseconds elapsed since the start of query execution.
  *   `pendingUnits` (*type:* `String.t`, *default:* `nil`) - Total parallel units of work remaining for the active stages.
  *   `totalSlotMs` (*type:* `String.t`, *default:* `nil`) - Cumulative slot-ms consumed by the query.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activeUnits => String.t(),
          :completedUnits => String.t(),
          :elapsedMs => String.t(),
          :pendingUnits => String.t(),
          :totalSlotMs => String.t()
        }

  field(:activeUnits)
  field(:completedUnits)
  field(:elapsedMs)
  field(:pendingUnits)
  field(:totalSlotMs)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.QueryTimelineSample do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.QueryTimelineSample.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.QueryTimelineSample do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
