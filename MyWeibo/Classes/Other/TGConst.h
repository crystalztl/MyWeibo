
#import <UIKit/UIKit.h>

// Post type
typedef enum {
    TGPostTypeAll = 1,
    TGPostTypeVideo = 41,
    TGPostTypeVoice = 31,
    TGPostTypePicture = 10,
    TGPostTypeJoke = 29
}TGPostType;

// Essence - Top title bar's height
UIKIT_EXTERN CGFloat const TGTitlesViewH;
// Essence - Top title bar's y value
UIKIT_EXTERN CGFloat const TGTitlesViewY;

// Essence - Cell - Margin
UIKIT_EXTERN CGFloat const TGPostCellMargin;
// Essence - Cell - Content text's y value
UIKIT_EXTERN CGFloat const TGPostCellTextY;
// Essence - Cell - Bottom tool bar's height
UIKIT_EXTERN CGFloat const TGPostCellBottomBarH;

// Essence - Cell - Picture post's max height
UIKIT_EXTERN CGFloat const TGPostCellPictureMaxH;
// Essence - Cell - Picture post's max displayed height when it exceeds stipulated max height
UIKIT_EXTERN CGFloat const TGPostCellPictureMaxDisplayH;