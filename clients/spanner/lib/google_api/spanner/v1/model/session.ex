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

defmodule GoogleApi.Spanner.V1.Model.Session do
  @moduledoc """
  A session in the Cloud Spanner API.

  ## Attributes

  *   `approximateLastUseTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The approximate timestamp when the session is last used. It is
      typically earlier than the actual last use time.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the session is created.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The labels for the session.

       * Label keys must be between 1 and 63 characters long and must conform to
         the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`.
       * Label values must be between 0 and 63 characters long and must conform
         to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
       * No more than 64 labels can be associated with a given session.

      See https://goo.gl/xmQnxf for more information on and examples of labels.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the session. This is always system-assigned.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :approximateLastUseTime => DateTime.t(),
          :createTime => DateTime.t(),
          :labels => map(),
          :name => String.t()
        }

  field(:approximateLastUseTime, as: DateTime)
  field(:createTime, as: DateTime)
  field(:labels, type: :map)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.Session do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.Session.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.Session do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
