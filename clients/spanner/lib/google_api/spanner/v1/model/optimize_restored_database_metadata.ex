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

defmodule GoogleApi.Spanner.V1.Model.OptimizeRestoredDatabaseMetadata do
  @moduledoc """
  Metadata type for the long-running operation used to track the progress
  of optimizations performed on a newly restored database. This long-running
  operation is automatically created by the system after the successful
  completion of a database restore, and cannot be cancelled.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the restored database being optimized.
  *   `progress` (*type:* `GoogleApi.Spanner.V1.Model.OperationProgress.t`, *default:* `nil`) - The progress of the post-restore optimizations.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t(),
          :progress => GoogleApi.Spanner.V1.Model.OperationProgress.t()
        }

  field(:name)
  field(:progress, as: GoogleApi.Spanner.V1.Model.OperationProgress)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.OptimizeRestoredDatabaseMetadata do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.OptimizeRestoredDatabaseMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.OptimizeRestoredDatabaseMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end