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

defmodule GoogleApi.YouTube.V3.Model.VideoContentDetails do
  @moduledoc """
  Details about the content of a YouTube Video.

  ## Attributes

  *   `caption` (*type:* `String.t`, *default:* `nil`) - The value of <code>captions</code> indicates whether the video
      has captions or not.
  *   `contentRating` (*type:* `GoogleApi.YouTube.V3.Model.ContentRating.t`, *default:* `nil`) - Specifies the ratings that the video received under various rating schemes.
  *   `countryRestriction` (*type:* `GoogleApi.YouTube.V3.Model.AccessPolicy.t`, *default:* `nil`) - The <code>countryRestriction</code> object contains information about the
      countries where a video is (or is not) viewable.
  *   `definition` (*type:* `String.t`, *default:* `nil`) - The value of <code>definition</code> indicates whether the video is
      available in high definition or only in standard definition.
  *   `dimension` (*type:* `String.t`, *default:* `nil`) - The value of <code>dimension</code> indicates whether the video is
      available in 3D or in 2D.
  *   `duration` (*type:* `String.t`, *default:* `nil`) - The length of the video. The tag value is an <a
      href="//en.wikipedia.org/wiki/ISO_8601#Durations">ISO 8601</a> duration in
      the format <code>PT#M#S</code>, in which the letters <code>PT</code>
      indicate that the value specifies a period of time, and the letters
      <code>M</code> and <code>S</code> refer to length in minutes and seconds,
      respectively. The <code>#</code> characters preceding the <code>M</code>
      and <code>S</code> letters are both integers that specify the number of
      minutes (or seconds) of the video. For example, a value of
      <code>PT15M51S</code> indicates that the video is 15 minutes and 51 seconds
      long.
  *   `hasCustomThumbnail` (*type:* `boolean()`, *default:* `nil`) - Indicates whether the video uploader has provided a custom
      thumbnail image for the video.
      This property is only visible to the video uploader.
  *   `licensedContent` (*type:* `boolean()`, *default:* `nil`) - The value of <code>is_license_content</code> indicates whether the video is
      licensed content.
  *   `projection` (*type:* `String.t`, *default:* `nil`) - Specifies the projection format of the video.
  *   `regionRestriction` (*type:* `GoogleApi.YouTube.V3.Model.VideoContentDetailsRegionRestriction.t`, *default:* `nil`) - The <code>regionRestriction</code> object contains information about the
      countries where a video is (or is not) viewable. The object will contain
      either the <code>contentDetails.regionRestriction.allowed</code> property
      or the <code>contentDetails.regionRestriction.blocked</code> property.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :caption => String.t(),
          :contentRating => GoogleApi.YouTube.V3.Model.ContentRating.t(),
          :countryRestriction => GoogleApi.YouTube.V3.Model.AccessPolicy.t(),
          :definition => String.t(),
          :dimension => String.t(),
          :duration => String.t(),
          :hasCustomThumbnail => boolean(),
          :licensedContent => boolean(),
          :projection => String.t(),
          :regionRestriction =>
            GoogleApi.YouTube.V3.Model.VideoContentDetailsRegionRestriction.t()
        }

  field(:caption)
  field(:contentRating, as: GoogleApi.YouTube.V3.Model.ContentRating)
  field(:countryRestriction, as: GoogleApi.YouTube.V3.Model.AccessPolicy)
  field(:definition)
  field(:dimension)
  field(:duration)
  field(:hasCustomThumbnail)
  field(:licensedContent)
  field(:projection)
  field(:regionRestriction, as: GoogleApi.YouTube.V3.Model.VideoContentDetailsRegionRestriction)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.VideoContentDetails do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.VideoContentDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.VideoContentDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
