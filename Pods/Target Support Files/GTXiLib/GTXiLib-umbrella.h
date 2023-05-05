#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "GTXAccessibilityTree.h"
#import "GTXAnalytics.h"
#import "GTXAnalyticsUtils.h"
#import "GTXAssertions.h"
#import "GTXCheckBlock.h"
#import "GTXChecking.h"
#import "GTXCheckResult.h"
#import "GTXChecksCollection.h"
#import "GTXCommon.h"
#import "GTXElementReference.h"
#import "GTXElementResultCollection.h"
#import "GTXError.h"
#import "GTXErrorReporter.h"
#import "GTXExcludeListBlock.h"
#import "GTXExcludeListFactory.h"
#import "GTXExcludeListing.h"
#import "GTXHierarchyResultCollection.h"
#import "GTXiLib.h"
#import "GTXiLibCore.h"
#import "GTXImageAndColorUtils.h"
#import "GTXImageRGBAData.h"
#import "GTXLogger.h"
#import "GTXLogProperty.h"
#import "GTXOCRContrastCheck.h"
#import "GTXPluginXCTestCase.h"
#import "GTXReport.h"
#import "GTXResult.h"
#import "GTXSwizzler.h"
#import "GTXTestCase.h"
#import "GTXTestEnvironment.h"
#import "GTXTestSuite.h"
#import "GTXToolKit.h"
#import "GTXTreeIteratorContext.h"
#import "GTXTreeIteratorElement.h"
#import "GTXXCUIApplicationProxy.h"
#import "GTXXCUIElementProxy.h"
#import "GTXXCUIElementQueryProxy.h"
#import "NSError+GTXAdditions.h"
#import "NSObject+GTXLogging.h"
#import "GTXImageRGBAData+GTXOOPAdditions.h"
#import "GTXLocalizedStringsManagerUtils.h"
#import "GTXProtoUtils.h"
#import "GTXToolKit+GTXOOPAdditions.h"
#import "NSObject+GTXAdditions.h"
#import "NSString+GTXAdditions.h"
#import "UIColor+GTXOOPAdditions.h"
#import "UIColor+GTXAdditions.h"
#import "accessibility_label_not_punctuated_check.h"
#import "check.h"
#import "check_lookup.h"
#import "check_result_in_hierarchy.h"
#import "check_result_resource_similarity.h"
#import "check_result_similarity.h"
#import "contrast_check.h"
#import "contrast_swatch.h"
#import "element_trait.h"
#import "element_type.h"
#import "error_message.h"
#import "gtx_types.h"
#import "image_color_utils.h"
#import "locales.h"
#import "localized_strings_manager.h"
#import "localized_string_ids.h"
#import "minimum_tappable_area_check.h"
#import "nearest_ancestor_relation_resource_id_generator.h"
#import "no_label_check.h"
#import "parameters.h"
#import "accessibility_hierarchy_searching.h"
#import "check_result_clustering.h"
#import "enums.pb.h"
#import "gtx.pb.h"
#import "metadata_map.h"
#import "proto_utils.h"
#import "result.pb.h"
#import "typedefs.h"
#import "resource_id_generator.h"
#import "string_utils.h"
#import "toolkit.h"
#import "xml_utils.h"

FOUNDATION_EXPORT double GTXiLibVersionNumber;
FOUNDATION_EXPORT const unsigned char GTXiLibVersionString[];
