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

defmodule GoogleApi.YouTube.V3.Model.LiveBroadcastSnippet do
  @moduledoc """
  Basic broadcast information.

  ## Attributes

  *   `actualEndTime` (*type:* `String.t`, *default:* `nil`) - The date and time that the broadcast actually ended. This information is
      only available once the broadcast's state is <code>complete</code>. The
      value is specified in <a href="//www.w3.org/TR/NOTE-datetime">ISO 8601</a>
      format.
  *   `actualStartTime` (*type:* `String.t`, *default:* `nil`) - The date and time that the broadcast actually started. This information is
      only available once the broadcast's state is <code>live</code>. The
      value is specified in <a href="//www.w3.org/TR/NOTE-datetime">ISO 8601</a>
      format.
  *   `channelId` (*type:* `String.t`, *default:* `nil`) - The ID that YouTube uses to uniquely identify the channel that
      is publishing the broadcast.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The broadcast's description. As with the <code>title</code>, you can set
      this field by modifying the broadcast resource or by setting the
      <code><a
      href="/youtube/v3/docs/videos#snippet.description">description</a></code>
      field of the corresponding video resource.
  *   `isDefaultBroadcast` (*type:* `boolean()`, *default:* `nil`) - Indicates whether this broadcast is the default broadcast.
      Internal only.
  *   `liveChatId` (*type:* `String.t`, *default:* `nil`) - The id of the live chat for this broadcast.
  *   `publishedAt` (*type:* `String.t`, *default:* `nil`) - The date and time that the broadcast was added to YouTube's live broadcast
      schedule. The value is specified in
      <a href="//www.w3.org/TR/NOTE-datetime">ISO 8601</a>
      format.
  *   `scheduledEndTime` (*type:* `String.t`, *default:* `nil`) - The date and time that the broadcast is scheduled to end. The value
      is specified in <a href="//www.w3.org/TR/NOTE-datetime">ISO 8601</a>
      format.
  *   `scheduledStartTime` (*type:* `String.t`, *default:* `nil`) - The date and time that the broadcast is scheduled to start. The value
      is specified in <a href="//www.w3.org/TR/NOTE-datetime">ISO 8601</a>
      format.
  *   `thumbnails` (*type:* `GoogleApi.YouTube.V3.Model.ThumbnailDetails.t`, *default:* `nil`) - A map of thumbnail images associated with the broadcast. For each nested
      object in this object, the key is the name of the thumbnail image, and
      the value is an object that contains other information about the
      thumbnail.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The broadcast's title. Note that the broadcast represents exactly one
      YouTube video. You can set this field by modifying the broadcast resource
      or by setting the
      <code><a href="/youtube/v3/docs/videos#snippet.title">title</a></code>
      field of the corresponding video resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actualEndTime => String.t(),
          :actualStartTime => String.t(),
          :channelId => String.t(),
          :description => String.t(),
          :isDefaultBroadcast => boolean(),
          :liveChatId => String.t(),
          :publishedAt => String.t(),
          :scheduledEndTime => String.t(),
          :scheduledStartTime => String.t(),
          :thumbnails => GoogleApi.YouTube.V3.Model.ThumbnailDetails.t(),
          :title => String.t()
        }

  field(:actualEndTime)
  field(:actualStartTime)
  field(:channelId)
  field(:description)
  field(:isDefaultBroadcast)
  field(:liveChatId)
  field(:publishedAt)
  field(:scheduledEndTime)
  field(:scheduledStartTime)
  field(:thumbnails, as: GoogleApi.YouTube.V3.Model.ThumbnailDetails)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.LiveBroadcastSnippet do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.LiveBroadcastSnippet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.LiveBroadcastSnippet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
