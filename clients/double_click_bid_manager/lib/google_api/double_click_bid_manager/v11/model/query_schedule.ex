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

defmodule GoogleApi.DoubleClickBidManager.V11.Model.QuerySchedule do
  @moduledoc """
  Information on how frequently and when to run a query.

  ## Attributes

  *   `endTimeMs` (*type:* `String.t`, *default:* `nil`) - Datetime to periodically run the query until.
  *   `frequency` (*type:* `String.t`, *default:* `nil`) - How often the query is run.
  *   `nextRunMinuteOfDay` (*type:* `integer()`, *default:* `nil`) - Time of day at which a new report will be generated, represented as minutes past midnight. Range is 0 to 1439. Only applies to scheduled reports.
  *   `nextRunTimezoneCode` (*type:* `String.t`, *default:* `nil`) - Canonical timezone code for report generation time. Defaults to America/New_York.
  *   `startTimeMs` (*type:* `String.t`, *default:* `nil`) - When to start running the query. Not applicable to `ONE_TIME` frequency.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTimeMs => String.t(),
          :frequency => String.t(),
          :nextRunMinuteOfDay => integer(),
          :nextRunTimezoneCode => String.t(),
          :startTimeMs => String.t()
        }

  field(:endTimeMs)
  field(:frequency)
  field(:nextRunMinuteOfDay)
  field(:nextRunTimezoneCode)
  field(:startTimeMs)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V11.Model.QuerySchedule do
  def decode(value, options) do
    GoogleApi.DoubleClickBidManager.V11.Model.QuerySchedule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V11.Model.QuerySchedule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
