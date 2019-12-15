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

defmodule GoogleApi.Docs.V1.Model.TextStyle do
  @moduledoc """
  Represents the styling that can be applied to text.

  Inherited text styles are represented as unset fields in this message. A
  text style's parent depends on where the text style is defined:

    * The TextStyle of text in a Paragraph
      inherits from the paragraph's corresponding named style type.
    * The TextStyle on a named style
      inherits from the normal text named style.
    * The TextStyle of the normal text named style inherits
      from the default text style in the Docs editor.
    * The TextStyle on a Paragraph element
      that is contained in a table may inherit its text style from the table
      style.

  If the text style does not inherit from a parent, unsetting fields will
  revert the style to a value matching the defaults in the Docs editor.

  ## Attributes

  *   `backgroundColor` (*type:* `GoogleApi.Docs.V1.Model.OptionalColor.t`, *default:* `nil`) - The background color of the text. If set, the color is either an RGB color
      or transparent, depending on the `color` field.
  *   `baselineOffset` (*type:* `String.t`, *default:* `nil`) - The text's vertical offset from its normal position.

      Text with `SUPERSCRIPT` or `SUBSCRIPT` baseline offsets is automatically
      rendered in a smaller font size, computed based on the `font_size` field.
      The `font_size` itself is not affected by changes in this field.
  *   `bold` (*type:* `boolean()`, *default:* `nil`) - Whether or not the text is rendered as bold.
  *   `fontSize` (*type:* `GoogleApi.Docs.V1.Model.Dimension.t`, *default:* `nil`) - The size of the text's font.
  *   `foregroundColor` (*type:* `GoogleApi.Docs.V1.Model.OptionalColor.t`, *default:* `nil`) - The foreground color of the text. If set, the color is either an RGB color
      or transparent, depending on the `color` field.
  *   `italic` (*type:* `boolean()`, *default:* `nil`) - Whether or not the text is italicized.
  *   `link` (*type:* `GoogleApi.Docs.V1.Model.Link.t`, *default:* `nil`) - The hyperlink destination of the text. If unset, there is no link. Links
      are not inherited from parent text.

      Changing the link in an update request causes some other changes to the
      text style of the range:

      * When setting a link, the text foreground color will be updated to the
        default link color and the text will be underlined. If these fields are
        modified in the same request, those values will be used instead of the
        link defaults.
      * Setting a link on a text range that overlaps with an existing link will
        also update the existing link to point to the new URL.
      * Links are not settable on newline characters. As a result, setting a link
        on a text range that crosses a paragraph boundary, such as `"ABC\\n123"`,
        will separate the newline character(s) into their own text runs. The
        link will be applied separately to the runs before and after the newline.
      * Removing a link will update the text style of the range to match the
        style of the preceding text (or the default text styles if the preceding
        text is another link) unless different styles are being set in the same
        request.
  *   `smallCaps` (*type:* `boolean()`, *default:* `nil`) - Whether or not the text is in small capital letters.
  *   `strikethrough` (*type:* `boolean()`, *default:* `nil`) - Whether or not the text is struck through.
  *   `underline` (*type:* `boolean()`, *default:* `nil`) - Whether or not the text is underlined.
  *   `weightedFontFamily` (*type:* `GoogleApi.Docs.V1.Model.WeightedFontFamily.t`, *default:* `nil`) - The font family and rendered weight of the text.

      If an update request specifies values for both `weighted_font_family` and
      `bold`, the `weighted_font_family` is applied first, then `bold`.

      If `weighted_font_family#weight` is not set, it defaults to `400`.

      If `weighted_font_family` is set, then `weighted_font_family#font_family`
      must also be set with a non-empty value. Otherwise, a 400 bad request error
      is returned.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backgroundColor => GoogleApi.Docs.V1.Model.OptionalColor.t(),
          :baselineOffset => String.t(),
          :bold => boolean(),
          :fontSize => GoogleApi.Docs.V1.Model.Dimension.t(),
          :foregroundColor => GoogleApi.Docs.V1.Model.OptionalColor.t(),
          :italic => boolean(),
          :link => GoogleApi.Docs.V1.Model.Link.t(),
          :smallCaps => boolean(),
          :strikethrough => boolean(),
          :underline => boolean(),
          :weightedFontFamily => GoogleApi.Docs.V1.Model.WeightedFontFamily.t()
        }

  field(:backgroundColor, as: GoogleApi.Docs.V1.Model.OptionalColor)
  field(:baselineOffset)
  field(:bold)
  field(:fontSize, as: GoogleApi.Docs.V1.Model.Dimension)
  field(:foregroundColor, as: GoogleApi.Docs.V1.Model.OptionalColor)
  field(:italic)
  field(:link, as: GoogleApi.Docs.V1.Model.Link)
  field(:smallCaps)
  field(:strikethrough)
  field(:underline)
  field(:weightedFontFamily, as: GoogleApi.Docs.V1.Model.WeightedFontFamily)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.TextStyle do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.TextStyle.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.TextStyle do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end