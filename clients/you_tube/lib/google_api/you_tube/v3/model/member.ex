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

defmodule GoogleApi.YouTube.V3.Model.Member do
  @moduledoc """
  A <code><strong>member</strong></code> resource represents a member for a
  YouTube channel. A member provides recurring monetary support to a creator
  and receives special benefits.

  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - Etag of this resource.
  *   `kind` (*type:* `String.t`, *default:* `youtube#member`) - Identifies what kind of resource this is. Value: the fixed string
      <code>"youtube#member"</code>.
  *   `snippet` (*type:* `GoogleApi.YouTube.V3.Model.MemberSnippet.t`, *default:* `nil`) - The <code>snippet</code> object contains basic details about the member.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t(),
          :kind => String.t(),
          :snippet => GoogleApi.YouTube.V3.Model.MemberSnippet.t()
        }

  field(:etag)
  field(:kind)
  field(:snippet, as: GoogleApi.YouTube.V3.Model.MemberSnippet)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.Member do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.Member.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.Member do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
