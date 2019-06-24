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

defmodule GoogleApi.BigQuery.V2.Model.TrainingOptions do
  @moduledoc """


  ## Attributes

  *   `dataSplitColumn` (*type:* `String.t`, *default:* `nil`) - The column to split data with. This column won't be used as a
      feature.
      1. When data_split_method is CUSTOM, the corresponding column should
      be boolean. The rows with true value tag are eval data, and the false
      are training data.
      2. When data_split_method is SEQ, the first DATA_SPLIT_EVAL_FRACTION
      rows (from smallest to largest) in the corresponding column are used
      as training data, and the rest are eval data. It respects the order
      in Orderable data types:
      https://cloud.google.com/bigquery/docs/reference/standard-sql/data-types#data-type-properties
  *   `dataSplitEvalFraction` (*type:* `float()`, *default:* `nil`) - The fraction of evaluation data over the whole input data. The rest
      of data will be used as training data. The format should be double.
      Accurate to two decimal places.
      Default value is 0.2.
  *   `dataSplitMethod` (*type:* `String.t`, *default:* `nil`) - The data split type for training and evaluation, e.g. RANDOM.
  *   `distanceType` (*type:* `String.t`, *default:* `nil`) - [Beta] Distance type for clustering models.
  *   `earlyStop` (*type:* `boolean()`, *default:* `nil`) - Whether to stop early when the loss doesn't improve significantly
      any more (compared to min_relative_progress). Used only for iterative
      training algorithms.
  *   `initialLearnRate` (*type:* `float()`, *default:* `nil`) - Specifies the initial learning rate for the line search learn rate
      strategy.
  *   `inputLabelColumns` (*type:* `list(String.t)`, *default:* `nil`) - Name of input label columns in training data.
  *   `l1Regularization` (*type:* `float()`, *default:* `nil`) - L1 regularization coefficient.
  *   `l2Regularization` (*type:* `float()`, *default:* `nil`) - L2 regularization coefficient.
  *   `labelClassWeights` (*type:* `map()`, *default:* `nil`) - Weights associated with each label class, for rebalancing the
      training data. Only applicable for classification models.
  *   `learnRate` (*type:* `float()`, *default:* `nil`) - Learning rate in training. Used only for iterative training algorithms.
  *   `learnRateStrategy` (*type:* `String.t`, *default:* `nil`) - The strategy to determine learn rate for the current iteration.
  *   `lossType` (*type:* `String.t`, *default:* `nil`) - Type of loss function used during training run.
  *   `maxIterations` (*type:* `String.t`, *default:* `nil`) - The maximum number of iterations in training. Used only for iterative
      training algorithms.
  *   `minRelativeProgress` (*type:* `float()`, *default:* `nil`) - When early_stop is true, stops training when accuracy improvement is
      less than 'min_relative_progress'. Used only for iterative training
      algorithms.
  *   `modelUri` (*type:* `String.t`, *default:* `nil`) - [Beta] Google Cloud Storage URI from which the model was imported. Only
      applicable for imported models.
  *   `numClusters` (*type:* `String.t`, *default:* `nil`) - [Beta] Number of clusters for clustering models.
  *   `optimizationStrategy` (*type:* `String.t`, *default:* `nil`) - Optimization strategy for training linear regression models.
  *   `warmStart` (*type:* `boolean()`, *default:* `nil`) - Whether to train a model from the last checkpoint.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataSplitColumn => String.t(),
          :dataSplitEvalFraction => float(),
          :dataSplitMethod => String.t(),
          :distanceType => String.t(),
          :earlyStop => boolean(),
          :initialLearnRate => float(),
          :inputLabelColumns => list(String.t()),
          :l1Regularization => float(),
          :l2Regularization => float(),
          :labelClassWeights => map(),
          :learnRate => float(),
          :learnRateStrategy => String.t(),
          :lossType => String.t(),
          :maxIterations => String.t(),
          :minRelativeProgress => float(),
          :modelUri => String.t(),
          :numClusters => String.t(),
          :optimizationStrategy => String.t(),
          :warmStart => boolean()
        }

  field(:dataSplitColumn)
  field(:dataSplitEvalFraction)
  field(:dataSplitMethod)
  field(:distanceType)
  field(:earlyStop)
  field(:initialLearnRate)
  field(:inputLabelColumns, type: :list)
  field(:l1Regularization)
  field(:l2Regularization)
  field(:labelClassWeights, type: :map)
  field(:learnRate)
  field(:learnRateStrategy)
  field(:lossType)
  field(:maxIterations)
  field(:minRelativeProgress)
  field(:modelUri)
  field(:numClusters)
  field(:optimizationStrategy)
  field(:warmStart)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.TrainingOptions do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.TrainingOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.TrainingOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
