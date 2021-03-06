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

defmodule GoogleApi.ToolResults.V1beta3.Model.TestIssue do
  @moduledoc """
  An issue detected occurring during a test execution.

  ## Attributes

  *   `category` (*type:* `String.t`, *default:* `nil`) - Category of issue.
      Required.
  *   `errorMessage` (*type:* `String.t`, *default:* `nil`) - A brief human-readable message describing the issue.
      Required.
  *   `severity` (*type:* `String.t`, *default:* `nil`) - Severity of issue.
      Required.
  *   `stackTrace` (*type:* `GoogleApi.ToolResults.V1beta3.Model.StackTrace.t`, *default:* `nil`) - Deprecated in favor of stack trace fields inside specific warnings.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type of issue.
      Required.
  *   `warning` (*type:* `GoogleApi.ToolResults.V1beta3.Model.Any.t`, *default:* `nil`) - Warning message with additional details of the issue.
      Should always be a message from com.google.devtools.toolresults.v1.warnings
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :category => String.t(),
          :errorMessage => String.t(),
          :severity => String.t(),
          :stackTrace => GoogleApi.ToolResults.V1beta3.Model.StackTrace.t(),
          :type => String.t(),
          :warning => GoogleApi.ToolResults.V1beta3.Model.Any.t()
        }

  field(:category)
  field(:errorMessage)
  field(:severity)
  field(:stackTrace, as: GoogleApi.ToolResults.V1beta3.Model.StackTrace)
  field(:type)
  field(:warning, as: GoogleApi.ToolResults.V1beta3.Model.Any)
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.TestIssue do
  def decode(value, options) do
    GoogleApi.ToolResults.V1beta3.Model.TestIssue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.TestIssue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
