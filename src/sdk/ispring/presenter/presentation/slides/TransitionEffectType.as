/*******************************************************************************
 * Copyright (c) iSpring Solutions, Inc. 
 * All rights reserved. This source code and the accompanying materials are made
 * available under the terms of the iSpring Public License v1.0 which accompanies
 * this distribution, and is available at:
 * http://www.ispringsolutions.com/legal/public-license-v10.html
 *
 *******************************************************************************/

package ispring.presenter.presentation.slides
{

/**
 * The TransitionEffectType class is an enumeration class that provides values for
 * different slide transition effects.
 * 
 * <p>Use the values defined by the TransitionEffectType class with the <code>effectType</code>
 * property of the ISlideShowTransition interface.
 * </p>
 * 
 * @see ispring.presenter.presentation.slides.ISlideShowTransition#effectType
 * 
 * @langversion 3.0
 * @playerversion Flash 10.1
 * 
 * @productversion iSpring&nbsp;Platform 6.0
 */
public class TransitionEffectType
{
	/**
	 * No transition effect.
	 */
	public static const NULL:String = "null";
	
	/**
	 * A randomly chosen transition effect.
	 */
	public static const RANDOM:String = "RandomTransition";

	public static const PUSH_TOP:String = "PushUp";
	public static const PUSH_BOTTOM:String = "PushDown";
	public static const PUSH_RIGHT:String = "PushRight";
	public static const PUSH_LEFT:String = "PushLeft";
		
	public static const SHAPE_CIRCLE:String = "ShapeCircle";
	public static const SHAPE_DIAMOND:String = "ShapeDiamond";
	public static const SHAPE_PLUS:String = "ShapePlus";
		
	public static const BLINDS_VERTICAL:String = "BlindsVertical";
	public static const BLINDS_HORIZONTAL:String = "BlindsHorizontal";
		
	public static const BOX_IN:String = "BoxIn";
	public static const BOX_OUT:String = "BoxOut";
	
	public static const CHECKERBOARD_LEFT:String = "CheckerboardAcross";
	public static const CHECKERBOARD_TOP:String = "CheckerboardDown";
		
	public static const FLASHBULB:String = "Flashbulb";
		
	public static const WIPE_DOWN:String = "WipeDown";
	public static const WIPE_UP:String = "WipeUp";
	public static const WIPE_LEFT:String = "WipeLeft";
	public static const WIPE_RIGHT:String = "WipeRight";
		
	public static const RANDOM_BARS_VERTICAL:String = "RandomBarsVertical";
	public static const RANDOM_BARS_HORIZONTAL:String = "RandomBarsHorizontal";
		
	public static const FADE_SMOOTHLY:String = "FadeSmoothly";
	public static const FADE_THROUGH_BLACK:String = "FadeThroughBlack";
		
	public static const APPEAR:String = "Appear";
		
	public static const CUT:String = "Cut";
	public static const CUT_THROUGH_BLACK:String = "CutThroughBlack";
		
	public static const COMB_HORIZONTAL:String = "CombHorizontal";
	public static const COMB_VERTICAL:String = "CombVertical";
		
	public static const DISSOLVE:String = "Dissolve";
		
	public static const FLY_THROUGH_IN:String = "FlyThroughIn";
	public static const FLY_THROUGH_OUT:String = "FlyThroughOut";

	public static const FLY_THROUGH_IN_BOUNCE:String = "FlyThroughInBounce";
	public static const FLY_THROUGH_OUT_BOUNCE:String = "FlyThroughOutBounce";
		
	public static const WARP_IN:String = "WarpIn";
	public static const WARP_OUT:String = "WarpOut";
		
	public static const NEWSFLASH:String = "Newsflash";
		
	public static const BOX3D_UP:String = "BoxUp";
	public static const BOX3D_DOWN:String = "BoxDown";
	public static const BOX3D_LEFT:String = "BoxLeft";
	public static const BOX3D_RIGHT:String = "BoxRight";
		
	public static const ORBIT_UP:String = "OrbitUp";
	public static const ORBIT_DOWN:String = "OrbitDown";
	public static const ORBIT_LEFT:String = "OrbitLeft";
	public static const ORBIT_RIGHT:String = "OrbitRight";

	public static const WINDOW_HORIZONTAL:String = "WindowHorizontal";
	public static const WINDOW_VERTICAL:String = "WindowVertical";
		
	public static const DOORS_HORIZONTAL:String = "DoorsHorizontal";
	public static const DOORS_VERTICAL:String = "DoorsVertical";

	public static const FERRIS_WHEEL_LEFT:String = "FerrisWheelLeft";
	public static const FERRIS_WHEEL_RIGHT:String = "FerrisWheelRight";
		
	public static const SWITCH_UP:String = "SwitchUp";
	public static const SWITCH_DOWN:String = "SwitchDown";
	public static const SWITCH_LEFT:String = "SwitchLeft";
	public static const SWITCH_RIGHT:String = "SwitchRight";
		
	public static const GALLERY_LEFT:String = "GalleryLeft";
	public static const GALLERY_RIGHT:String = "GalleryRight";
		
	public static const RIPPLE_CENTER:String = "RippleCenter";
	public static const RIPPLE_BOTTOM_LEFT:String = "RippleLeftDown";
	public static const RIPPLE_BOTTOM_RIGHT:String = "RippleRightDown";
	public static const RIPPLE_TOP_RIGHT:String = "RippleRightUp";
	public static const RIPPLE_TOP_LEFT:String = "RippleLeftUp";
		
	public static const VORTEX_FROM_LEFT:String = "VortexLeft";
	public static const VORTEX_FROM_RIGHT:String = "VortexRight";
	public static const VORTEX_FROM_TOP:String = "VortexUp";
	public static const VORTEX_FROM_BOTTOM:String = "VortexDown";
		
	public static const SHRED_STRIPS_IN:String = "ShredStripsIn";
	public static const SHRED_STRIPS_OUT:String = "ShredStripsOut";
	public static const SHRED_RECTANGLES_IN:String = "ShredRectangleIn";
	public static const SHRED_RECTANGLES_OUT:String = "ShredRectangleOut";
		
	public static const FLIP_LEFT:String = "FlipLeft";
	public static const FLIP_RIGHT:String = "FlipRight";
	public static const FLIP_UP:String = "FlipUp";
	public static const FLIP_DOWN:String = "FlipDown";
		
	public static const COVER_FROM_DOWN:String = "CoverDown";
	public static const COVER_FROM_LEFT:String = "CoverLeft";
	public static const COVER_FROM_LEFT_DOWN:String = "CoverLeftDown";
	public static const COVER_FROM_LEFT_UP:String = "CoverLeftUp";
	public static const COVER_FROM_RIGHT:String = "CoverRight";
	public static const COVER_FROM_RIGHT_DOWN:String = "CoverRightDown";
	public static const COVER_FROM_RIGHT_UP:String = "CoverRightUp";
	public static const COVER_FROM_UP:String = "CoverUp";
		
	public static const UNCOVER_DOWN:String = "UncoverDown";
	public static const UNCOVER_LEFT:String = "UncoverLeft";
	public static const UNCOVER_LEFT_DOWN:String = "UncoverLeftDown";
	public static const UNCOVER_LEFT_UP:String = "UncoverLeftUp";
	public static const UNCOVER_RIGHT:String = "UncoverRight";
	public static const UNCOVER_RIGHT_DOWN:String = "UncoverRightDown";
	public static const UNCOVER_RIGHT_UP:String = "UncoverRightUp";
	public static const UNCOVER_UP:String = "UncoverUp";
		
	public static const STRIPS_LEFT_DOWN:String = "StripsLeftDown";
	public static const STRIPS_LEFT_UP:String = "StripsLeftUp";
	public static const STRIPS_RIGHT_DOWN:String = "StripsRightDown";
	public static const STRIPS_RIGHT_UP:String = "StripsRightUp";
		
	public static const HONEYCOMB:String = "Honeycomb";
		
	public static const SPLIT_VERTICAL_IN:String = "SplitVerticalIn";
	public static const SPLIT_VERTICAL_OUT:String = "SplitVerticalOut";
	public static const SPLIT_HORIZONTAL_IN:String = "SplitHorizontalIn";
	public static const SPLIT_HORIZONTAL_OUT:String = "SplitHorizontalOut";
		
	public static const WEDGE:String = "Wedge";
	public static const WHEEL_1:String = "Wheel1Spoke";
	public static const WHEEL_2:String = "Wheel2Spokes";
	public static const WHEEL_3:String = "Wheel3Spokes";
	public static const WHEEL_4:String = "Wheel4Spokes";
	public static const WHEEL_8:String = "Wheel8Spokes";
	public static const WHEEL_1_REVERSE:String = "WheelReverse1Spoke";
		
	public static const REVEAL_SMOOTH_LEFT:String = "RevealSmoothLeft";
	public static const REVEAL_SMOOTH_RIGHT:String = "RevealSmoothRight";
	public static const REVEAL_BLACK_LEFT:String = "RevealBlackLeft";
	public static const REVEAL_BLACK_RIGHT:String = "RevealBlackRight";
		
	public static const CUBE_FROM_RIGHT:String = "CubeRight";
	public static const CUBE_FROM_LEFT:String = "CubeLeft";
	public static const CUBE_FROM_UP:String = "CubeUp";
	public static const CUBE_FROM_DOWN:String = "CubeDown";
		
	public static const ROTATE_FROM_RIGHT:String = "RotateRight";
	public static const ROTATE_FROM_LEFT:String = "RotateLeft";
	public static const ROTATE_FROM_UP:String = "RotateUp";
	public static const ROTATE_FROM_DOWN:String = "RotateDown";
		
	public static const GLITTER_DIAMOND_DOWN:String = "GlitterDiamondDown";
	public static const GLITTER_DIAMOND_UP:String = "GlitterDiamondUp";
	public static const GLITTER_DIAMOND_LEFT:String = "GlitterDiamondLeft";
	public static const GLITTER_DIAMOND_RIGHT:String = "GlitterDiamondRight";
	public static const GLITTER_HEXAGON_DOWN:String = "GlitterHexagonDown";
	public static const GLITTER_HEXAGON_UP:String = "GlitterHexagonUp";
	public static const GLITTER_HEXAGON_LEFT:String = "GlitterHexagonLeft";
	public static const GLITTER_HEXAGON_RIGHT:String = "GlitterHexagonRight";
		
	public static const CONVEYOR_LEFT:String = "ConveyorLeft";
	public static const CONVEYOR_RIGHT:String = "ConveyorRight";
		
	public static const PAN_LEFT:String = "PanLeft";
	public static const PAN_UP:String = "PanUp";
	public static const PAN_RIGHT:String = "PanRight";
	public static const PAN_DOWN:String = "PanDown";
}
	
}