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

defmodule GoogleApi.BigQueryReservation.V1.Model.CapacityCommitment do
  @moduledoc """
  Capacity commitment is a way to purchase compute capacity for BigQuery jobs
  (in the form of slots) with some committed period of usage. Monthly and
  annual commitments renew by default. Only flex commitments can be removed. In
  order to remove monthly or annual commitments, their plan needs to be changed
  to flex first.

  A capacity commitment resource exists as a child resource of the admin
  project.

  ## Attributes

  *   `commitmentEndTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The end of the current commitment period. It is applicable only for ACTIVE
      capacity commitments.
  *   `failureStatus` (*type:* `GoogleApi.BigQueryReservation.V1.Model.Status.t`, *default:* `nil`) - Output only. For FAILED commitment plan, provides the reason of failure.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the capacity commitment, e.g.,
         projects/myproject/locations/US/capacityCommitments/123
  *   `plan` (*type:* `String.t`, *default:* `nil`) - Capacity commitment commitment plan.
  *   `renewalPlan` (*type:* `String.t`, *default:* `nil`) - The plan this capacity commitment is converted to after commitment_end_time
      passes. Once the plan is changed, committed period is extended according to
      commitment plan. Only applicable for ANNUAL commitments.
  *   `slotCount` (*type:* `String.t`, *default:* `nil`) - Number of slots in this commitment.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the commitment.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commitmentEndTime => DateTime.t(),
          :failureStatus => GoogleApi.BigQueryReservation.V1.Model.Status.t(),
          :name => String.t(),
          :plan => String.t(),
          :renewalPlan => String.t(),
          :slotCount => String.t(),
          :state => String.t()
        }

  field(:commitmentEndTime, as: DateTime)
  field(:failureStatus, as: GoogleApi.BigQueryReservation.V1.Model.Status)
  field(:name)
  field(:plan)
  field(:renewalPlan)
  field(:slotCount)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.BigQueryReservation.V1.Model.CapacityCommitment do
  def decode(value, options) do
    GoogleApi.BigQueryReservation.V1.Model.CapacityCommitment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQueryReservation.V1.Model.CapacityCommitment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end