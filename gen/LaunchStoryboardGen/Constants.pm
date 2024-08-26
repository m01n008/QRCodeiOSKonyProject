use strict;
use warnings;

# StorybaordMetaJsonConstants
package StorybaordMetaJSONConstants;
use constant KEY_ROOT_CONTAINER_CHILDREN => "children";
use constant KEY_UI_ELEMENT_TYPE => "UIElementType";
use constant KEY_PLATFORM_IDENTIFIER => "id";
use constant KEY_SKIN => "skin";
use constant KEY_BACKGROUND_COLOR => "backgroundColor";
use constant KEY_LEFT => "left";
use constant KEY_BOTTOM => "bottom";
use constant KEY_RIGHT => "right";
use constant KEY_TOP => "top";
use constant KEY_WIDTH => "width";
use constant KEY_HEIGHT => "height";
use constant KEY_CENTER_X => "centerX";
use constant KEY_CENTER_Y => "centerY";
use constant KEY_ALIGNMENT => "alignment";
use constant KEY_FONT_COLOR => "fontColor";
use constant KEY_FONT_SIZE => "fontSize";
use constant KEY_FONT_NAME => "fontName";
use constant KEY_TEXT => "text";
use constant KEY_VISIBLE => "visible";

use constant VALUE_EXTERNAL_FONT_NAME_SYSTEM => "System";
use constant VALUE_EXTERNAL_FONT_NAME_SYSTEM_BOLD => "System-Bold";
use constant VALUE_EXTERNAL_FONT_NAME_SYSTEM_ITALIC => "System-Italic";

use constant VALUE_INTERNAL_FONT_NAME_SYSTEM => "system";
use constant VALUE_INTERNAL_FONT_NAME_SYSTEM_BOLD => "boldSystem";
use constant VALUE_INTERNAL_FONT_NAME_SYSTEM_ITALIC => "italicSystem";

# StoryboardModelConstants
package StoryboardModelConstants;
use constant KEY_CHILDREN => "children";
use constant KEY_UI_ELEMENT_TYPE => "UIElementType";

package Constants;
# UIElement types constants
use constant UI_ELEMENT_ROOT_CONTAINER => "rootContainerElement";
use constant UI_ELEMENT_IMAGE => "imageUIElement";
use constant UI_ELEMENT_LABEL => "labelUIElement";
use constant DEFAULT_FONT_SIZE => 14;

package Constraints;
# Constraints types
use constant LEADING_CONSTRAINT => "leading";
use constant TRAILING_CONSTRAINT => "trailing";
use constant TOP_CONSTRAINT => "top";
use constant BOTTOM_CONSTRAINT => "bottom";
use constant WIDTH_CONSTRAINT => "width";
use constant HEIGHT_CONSTRAINT => "height";
use constant CENTERX_CONSTRAINT => "centerX";
use constant CENTERY_CONSTRAINT => "centerY";

1;