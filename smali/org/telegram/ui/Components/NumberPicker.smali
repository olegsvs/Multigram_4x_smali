.class public Lorg/telegram/ui/Components/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;,
        Lorg/telegram/ui/Components/NumberPicker$Formatter;,
        Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;,
        Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I = 0x0

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x1

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x3

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2


# instance fields
.field private mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private mFlingScroller:Lorg/telegram/ui/Components/Scroller;

.field private mFormatter:Lorg/telegram/ui/Components/NumberPicker$Formatter;

.field private mIncrementVirtualButtonPressed:Z

.field private mIngonreMoveEvents:Z

.field private mInitialScrollOffset:I

.field private mInputText:Landroid/widget/TextView;

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private mMinHeight:I

.field private mMinValue:I

.field private mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;

.field private mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mSelectionDivider:Landroid/graphics/Paint;

.field private mSelectionDividerHeight:I

.field private mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSolidColor:I

.field private mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLongPressUpdateInterval:J

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    .line 80
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 194
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->init()V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLongPressUpdateInterval:J

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    .line 80
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 199
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->init()V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 203
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLongPressUpdateInterval:J

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    .line 80
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 204
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->init()V

    .line 205
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/NumberPicker;

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/NumberPicker;

    .prologue
    .line 45
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/NumberPicker;

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/NumberPicker;

    .prologue
    .line 45
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/NumberPicker;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/NumberPicker;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/NumberPicker;

    .prologue
    .line 45
    iget-wide v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method private changeValueByOne(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v1, 0x0

    .line 773
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 774
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->moveToFinalScrollerPosition(Lorg/telegram/ui/Components/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 775
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->moveToFinalScrollerPosition(Lorg/telegram/ui/Components/Scroller;)Z

    .line 777
    :cond_0
    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    .line 778
    if-eqz p1, :cond_1

    .line 779
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/Scroller;->startScroll(IIIII)V

    .line 783
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    .line 784
    return-void

    .line 781
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/Scroller;->startScroll(IIIII)V

    goto :goto_0
.end method

.method private decrementSelectorIndices([I)V
    .locals 4
    .param p1, "selectorIndices"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 860
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 861
    aget v1, p1, v3

    add-int/lit8 v0, v1, -0x1

    .line 862
    .local v0, "nextScrollSelectorIndex":I
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_0

    .line 863
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    .line 865
    :cond_0
    aput v0, p1, v2

    .line 866
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 867
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 870
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 871
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 872
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 886
    :goto_0
    return-void

    .line 875
    :cond_0
    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 876
    :cond_1
    const-string/jumbo v2, ""

    .line 885
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 878
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 879
    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 880
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 881
    goto :goto_1

    .line 882
    .end local v1    # "displayedValueIndex":I
    :cond_3
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 961
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 962
    .local v4, "deltaY":I
    if-eqz v4, :cond_1

    .line 963
    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    .line 964
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    .line 965
    if-lez v4, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v4, v0

    .line 967
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/Scroller;->startScroll(IIIII)V

    .line 968
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    .line 969
    const/4 v1, 0x1

    .line 971
    :cond_1
    return v1

    .line 965
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    goto :goto_0
.end method

.method private fling(I)V
    .locals 9
    .param p1, "velocityY"    # I

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 829
    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    .line 831
    if-lez p1, :cond_0

    .line 832
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Components/Scroller;->fling(IIIIIIII)V

    .line 837
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    .line 838
    return-void

    .line 834
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Components/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 889
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFormatter:Lorg/telegram/ui/Components/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFormatter:Lorg/telegram/ui/Components/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/Components/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 1070
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 931
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 933
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 956
    :goto_0
    return v1

    .line 938
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 940
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 941
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 942
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 938
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 951
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 934
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    .line 956
    :goto_2
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    goto :goto_0

    .line 952
    .restart local v0    # "i":I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 841
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 842
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 846
    .end local p1    # "selectorIndex":I
    :cond_0
    :goto_0
    return p1

    .line 843
    .restart local p1    # "selectorIndex":I
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 844
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private incrementSelectorIndices([I)V
    .locals 4
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 850
    const/4 v1, 0x1

    const/4 v2, 0x0

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 851
    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    aget v1, p1, v1

    add-int/lit8 v0, v1, 0x1

    .line 852
    .local v0, "nextScrollSelectorIndex":I
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    if-le v0, v1, :cond_0

    .line 853
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    .line 855
    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 856
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 857
    return-void
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v8, -0x1

    .line 124
    iput v6, p0, Lorg/telegram/ui/Components/NumberPicker;->mSolidColor:I

    .line 125
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDivider:Landroid/graphics/Paint;

    .line 126
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDivider:Landroid/graphics/Paint;

    const-string/jumbo v7, "dialogButton"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDivider:Landroid/graphics/Paint;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    :cond_0
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v5, v4, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividerHeight:I

    .line 131
    const/high16 v4, 0x42400000    # 48.0f

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v5, v4, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividersDistance:I

    .line 133
    iput v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinHeight:I

    .line 135
    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v5, v4, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxHeight:I

    .line 136
    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinHeight:I

    if-eq v4, v8, :cond_1

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxHeight:I

    if-eq v4, v8, :cond_1

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinHeight:I

    iget v7, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxHeight:I

    if-le v4, v7, :cond_1

    .line 137
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "minHeight > maxHeight"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 140
    :cond_1
    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v5, v4, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinWidth:I

    .line 142
    iput v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    .line 143
    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinWidth:I

    if-eq v4, v8, :cond_2

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    if-eq v4, v8, :cond_2

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinWidth:I

    iget v7, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    if-le v4, v7, :cond_2

    .line 144
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "minWidth > maxWidth"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 147
    :cond_2
    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    if-ne v4, v8, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mComputeMaxWidth:Z

    .line 149
    new-instance v4, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;-><init>(Lorg/telegram/ui/Components/NumberPicker;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    .line 151
    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/NumberPicker;->setWillNotDraw(Z)V

    .line 153
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    .line 154
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 155
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 156
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    const-string/jumbo v7, "dialogTextBlack"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 158
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 159
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v6}, Lorg/telegram/ui/Components/NumberPicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 162
    .local v2, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mTouchSlop:I

    .line 163
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinimumFlingVelocity:I

    .line 164
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaximumFlingVelocity:I

    .line 165
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mTextSize:I

    .line 167
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 168
    .local v3, "paint":Landroid/graphics/Paint;
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 169
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 170
    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 171
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 172
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 173
    .local v1, "colors":Landroid/content/res/ColorStateList;
    sget-object v4, Lorg/telegram/ui/Components/NumberPicker;->ENABLED_STATE_SET:[I

    invoke-virtual {v1, v4, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 174
    .local v0, "color":I
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    iput-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 177
    new-instance v4, Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7, v5}, Lorg/telegram/ui/Components/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    .line 178
    new-instance v4, Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x40200000    # 2.5f

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v4, v5, v6}, Lorg/telegram/ui/Components/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    .line 180
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    .line 181
    return-void

    .end local v0    # "color":I
    .end local v1    # "colors":Landroid/content/res/ColorStateList;
    .end local v2    # "configuration":Landroid/view/ViewConfiguration;
    .end local v3    # "paint":Landroid/graphics/Paint;
    :cond_3
    move v4, v6

    .line 147
    goto/16 :goto_0
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 801
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 802
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->setFadingEdgeLength(I)V

    .line 803
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .prologue
    .line 787
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheelIndices()V

    .line 788
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    .line 789
    .local v1, "selectorIndices":[I
    array-length v5, v1

    iget v6, p0, Lorg/telegram/ui/Components/NumberPicker;->mTextSize:I

    mul-int v4, v5, v6

    .line 790
    .local v4, "totalTextHeight":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 791
    .local v3, "totalTextGapHeight":F
    array-length v5, v1

    int-to-float v2, v5

    .line 792
    .local v2, "textGapCount":F
    div-float v5, v3, v2

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorTextGapHeight:I

    .line 793
    iget v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mTextSize:I

    iget v6, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    .line 794
    iget-object v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getBaseline()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 795
    .local v0, "editTextTextPosition":I
    iget v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x1

    sub-int v5, v0, v5

    iput v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    .line 796
    iget v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    iput v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    .line 797
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    .line 798
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 739
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 740
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    .line 741
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v0

    .line 742
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 743
    add-int/lit8 v4, v1, -0x1

    add-int v2, v0, v4

    .line 744
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 745
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 747
    :cond_0
    aput v2, v3, v1

    .line 748
    aget v4, v3, v1

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 742
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 750
    .end local v2    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 689
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 700
    .end local p1    # "measureSpec":I
    :goto_0
    :sswitch_0
    return p1

    .line 692
    .restart local p1    # "measureSpec":I
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 693
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 694
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_0

    .line 702
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 698
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 700
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 694
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private moveToFinalScrollerPosition(Lorg/telegram/ui/Components/Scroller;)Z
    .locals 7
    .param p1, "scroller"    # Lorg/telegram/ui/Components/Scroller;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 239
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/Scroller;->forceFinished(Z)V

    .line 240
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Scroller;->getFinalY()I

    move-result v5

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Scroller;->getCurrY()I

    move-result v6

    sub-int v0, v5, v6

    .line 241
    .local v0, "amountToScroll":I
    iget v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v5, v0

    iget v6, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    rem-int v1, v5, v6

    .line 242
    .local v1, "futureScrollOffset":I
    iget v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    sub-int v2, v5, v1

    .line 243
    .local v2, "overshootAdjustment":I
    if-eqz v2, :cond_2

    .line 244
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_0

    .line 245
    if-lez v2, :cond_1

    .line 246
    iget v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v2, v5

    .line 251
    :cond_0
    :goto_0
    add-int/2addr v0, v2

    .line 252
    invoke-virtual {p0, v4, v0}, Lorg/telegram/ui/Components/NumberPicker;->scrollBy(II)V

    .line 255
    :goto_1
    return v3

    .line 248
    :cond_1
    iget v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v2, v5

    goto :goto_0

    :cond_2
    move v3, v4

    .line 255
    goto :goto_1
.end method

.method private notifyChange(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    .line 902
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mOnValueChangeListener:Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mOnValueChangeListener:Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;->onValueChange(Lorg/telegram/ui/Components/NumberPicker;II)V

    .line 905
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .prologue
    .line 819
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 822
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    .line 823
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mOnScrollListener:Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mOnScrollListener:Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;->onScrollStateChange(Lorg/telegram/ui/Components/NumberPicker;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Lorg/telegram/ui/Components/Scroller;)V
    .locals 2
    .param p1, "scroller"    # Lorg/telegram/ui/Components/Scroller;

    .prologue
    .line 806
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    if-ne p1, v0, :cond_2

    .line 807
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 808
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    .line 810
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->onScrollStateChange(I)V

    .line 816
    :cond_1
    :goto_0
    return-void

    .line 812
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 813
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 2
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 908
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 909
    new-instance v0, Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lorg/telegram/ui/Components/NumberPicker;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 913
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    # invokes: Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$000(Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 914
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Lorg/telegram/ui/Components/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 915
    return-void

    .line 911
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 927
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->cancel()V

    .line 928
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 921
    :cond_0
    return-void
.end method

.method public static resolveSizeAndState(III)I
    .locals 4
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I
    .param p2, "childMeasuredState"    # I

    .prologue
    .line 717
    move v0, p0

    .line 718
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 719
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 720
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 735
    :goto_0
    const/high16 v3, -0x1000000

    and-int/2addr v3, p2

    or-int/2addr v3, v0

    return v3

    .line 722
    :sswitch_0
    move v0, p0

    .line 723
    goto :goto_0

    .line 725
    :sswitch_1
    if-ge v2, p0, :cond_0

    .line 726
    const/high16 v3, 0x1000000

    or-int v0, v2, v3

    goto :goto_0

    .line 728
    :cond_0
    move v0, p0

    .line 730
    goto :goto_0

    .line 732
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 720
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 708
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 709
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 710
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lorg/telegram/ui/Components/NumberPicker;->resolveSizeAndState(III)I

    move-result p2

    .line 712
    .end local v0    # "desiredWidth":I
    .end local p2    # "measuredSize":I
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 753
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    if-ne v1, p1, :cond_0

    .line 770
    :goto_0
    return-void

    .line 756
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_2

    .line 757
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 762
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    .line 763
    .local v0, "previous":I
    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    .line 764
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    .line 765
    if-eqz p2, :cond_1

    .line 766
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/NumberPicker;->notifyChange(II)V

    .line 768
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheelIndices()V

    .line 769
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    goto :goto_0

    .line 759
    .end local v0    # "previous":I
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 760
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1
.end method

.method private tryComputeMaxWidth()V
    .locals 12

    .prologue
    .line 525
    iget-boolean v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mComputeMaxWidth:Z

    if-nez v8, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    const/4 v5, 0x0

    .line 529
    .local v5, "maxTextWidth":I
    iget-object v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 530
    const/4 v4, 0x0

    .line 531
    .local v4, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v8, 0x9

    if-gt v2, v8, :cond_3

    .line 532
    iget-object v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/ui/Components/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 533
    .local v1, "digitWidth":F
    cmpl-float v8, v1, v4

    if-lez v8, :cond_2

    .line 534
    move v4, v1

    .line 531
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 537
    .end local v1    # "digitWidth":F
    :cond_3
    const/4 v6, 0x0

    .line 538
    .local v6, "numberOfDigits":I
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    .line 539
    .local v0, "current":I
    :goto_2
    if-lez v0, :cond_4

    .line 540
    add-int/lit8 v6, v6, 0x1

    .line 541
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 543
    :cond_4
    int-to-float v8, v6

    mul-float/2addr v8, v4

    float-to-int v5, v8

    .line 552
    .end local v0    # "current":I
    .end local v2    # "i":I
    .end local v4    # "maxDigitWidth":F
    .end local v6    # "numberOfDigits":I
    :cond_5
    iget-object v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v5, v8

    .line 553
    iget v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    if-eq v8, v5, :cond_0

    .line 554
    iget v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinWidth:I

    if-le v5, v8, :cond_8

    .line 555
    iput v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    .line 559
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    goto :goto_0

    .line 545
    :cond_6
    iget-object v9, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v10, :cond_5

    aget-object v3, v9, v8

    .line 546
    .local v3, "mDisplayedValue":Ljava/lang/String;
    iget-object v11, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 547
    .local v7, "textWidth":F
    int-to-float v11, v5

    cmpl-float v11, v7, v11

    if-lez v11, :cond_7

    .line 548
    float-to-int v5, v7

    .line 545
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 557
    .end local v3    # "mDisplayedValue":Ljava/lang/String;
    .end local v7    # "textWidth":F
    :cond_8
    iget v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinWidth:I

    iput v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    goto :goto_3
.end method

.method private updateInputTextView()Z
    .locals 4

    .prologue
    .line 893
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 894
    .local v0, "text":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 895
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 896
    const/4 v1, 0x1

    .line 898
    :goto_1
    return v1

    .line 893
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    goto :goto_0

    .line 898
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 426
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    .line 427
    .local v1, "scroller":Lorg/telegram/ui/Components/Scroller;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    .line 429
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 445
    :goto_0
    return-void

    .line 433
    :cond_0
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Scroller;->computeScrollOffset()Z

    .line 434
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Scroller;->getCurrY()I

    move-result v0

    .line 435
    .local v0, "currentScrollerY":I
    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 436
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    .line 438
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/Components/NumberPicker;->scrollBy(II)V

    .line 439
    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    .line 440
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 441
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/NumberPicker;->onScrollerFinished(Lorg/telegram/ui/Components/Scroller;)V

    goto :goto_0

    .line 443
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 490
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x1

    .line 380
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 381
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_0

    .line 409
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    :cond_1
    :goto_1
    return v2

    .line 384
    :sswitch_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 388
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 390
    :pswitch_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-ne v0, v4, :cond_3

    .line 391
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getMaxValue()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 392
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->requestFocus()Z

    .line 393
    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 394
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    .line 395
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    if-ne v0, v4, :cond_4

    move v1, v2

    :goto_3
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/NumberPicker;->changeValueByOne(Z)V

    goto :goto_1

    .line 391
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getMinValue()I

    move-result v3

    if-le v1, v3, :cond_0

    goto :goto_2

    .line 396
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 402
    :pswitch_1
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_0

    .line 403
    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastHandledDownDpadKeyCode:I

    goto :goto_1

    .line 381
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 388
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 368
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 369
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 375
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 372
    :pswitch_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 415
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 421
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 418
    :pswitch_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 415
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 649
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 606
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 644
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 654
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 655
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    .line 656
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 660
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/NumberPicker;->getRight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/NumberPicker;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v0, v3

    move/from16 v17, v0

    .line 661
    .local v17, "x":F
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v0, v3

    move/from16 v18, v0

    .line 664
    .local v18, "y":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    .line 665
    .local v14, "selectorIndices":[I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    array-length v3, v14

    if-ge v11, v3, :cond_2

    .line 666
    aget v13, v14, v11

    .line 667
    .local v13, "selectorIndex":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 673
    .local v12, "scrollSelectorValue":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne v11, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 674
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 676
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    int-to-float v3, v3

    add-float v18, v18, v3

    .line 665
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 679
    .end local v12    # "scrollSelectorValue":Ljava/lang/String;
    .end local v13    # "selectorIndex":I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/NumberPicker;->mTopSelectionDividerTop:I

    move/from16 v16, v0

    .line 680
    .local v16, "topOfTopDivider":I
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividerHeight:I

    add-int v10, v16, v3

    .line 681
    .local v10, "bottomOfTopDivider":I
    const/4 v4, 0x0

    move/from16 v0, v16

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/NumberPicker;->getRight()I

    move-result v3

    int-to-float v6, v3

    int-to-float v7, v10

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDivider:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 683
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/Components/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 684
    .local v9, "bottomOfBottomDivider":I
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividerHeight:I

    sub-int v15, v9, v3

    .line 685
    .local v15, "topOfBottomDivider":I
    const/4 v4, 0x0

    int-to-float v5, v15

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/NumberPicker;->getRight()I

    move-result v3

    int-to-float v6, v3

    int-to-float v7, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDivider:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 686
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 260
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 296
    :goto_0
    return v1

    .line 263
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 264
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 266
    :pswitch_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    .line 267
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventY:F

    iput v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownOrMoveEventY:F

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventTime:J

    .line 270
    iput-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mIngonreMoveEvents:Z

    .line 271
    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 272
    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    if-nez v3, :cond_1

    .line 273
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 280
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 281
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4

    .line 282
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/Scroller;->forceFinished(Z)V

    .line 283
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/Scroller;->forceFinished(Z)V

    .line 284
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/NumberPicker;->onScrollStateChange(I)V

    :cond_2
    :goto_2
    move v1, v2

    .line 293
    goto :goto_0

    .line 275
    :cond_3
    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 276
    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    if-nez v3, :cond_1

    .line 277
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_1

    .line 285
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 286
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Scroller;->forceFinished(Z)V

    .line 287
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Scroller;->forceFinished(Z)V

    goto :goto_2

    .line 288
    :cond_5
    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 289
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v4, v3

    invoke-direct {p0, v1, v4, v5}, Lorg/telegram/ui/Components/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_2

    .line 290
    :cond_6
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventY:F

    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 291
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v4, v1

    invoke-direct {p0, v2, v4, v5}, Lorg/telegram/ui/Components/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_2

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 209
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getMeasuredWidth()I

    move-result v7

    .line 210
    .local v7, "msrdWdth":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getMeasuredHeight()I

    move-result v6

    .line 212
    .local v6, "msrdHght":I
    iget-object v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 213
    .local v3, "inptTxtMsrdWdth":I
    iget-object v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 214
    .local v2, "inptTxtMsrdHght":I
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 215
    .local v1, "inptTxtLeft":I
    sub-int v8, v6, v2

    div-int/lit8 v5, v8, 0x2

    .line 216
    .local v5, "inptTxtTop":I
    add-int v4, v1, v3

    .line 217
    .local v4, "inptTxtRight":I
    add-int v0, v5, v2

    .line 218
    .local v0, "inptTxtBottom":I
    iget-object v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v8, v1, v5, v4, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 220
    if-eqz p1, :cond_0

    .line 221
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheel()V

    .line 222
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeFadingEdges()V

    .line 223
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getHeight()I

    move-result v8

    iget v9, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mTopSelectionDividerTop:I

    .line 224
    iget v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mTopSelectionDividerTop:I

    iget v9, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividerHeight:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividersDistance:I

    add-int/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 226
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 230
    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Lorg/telegram/ui/Components/NumberPicker;->makeMeasureSpec(II)I

    move-result v2

    .line 231
    .local v2, "newWidthMeasureSpec":I
    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Lorg/telegram/ui/Components/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 232
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 233
    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lorg/telegram/ui/Components/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 234
    .local v3, "widthSize":I
    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lorg/telegram/ui/Components/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 235
    .local v0, "heightSize":I
    invoke-virtual {p0, v3, v0}, Lorg/telegram/ui/Components/NumberPicker;->setMeasuredDimension(II)V

    .line 236
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 301
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_0

    .line 302
    const/4 v10, 0x0

    .line 363
    :goto_0
    return v10

    .line 304
    :cond_0
    iget-object v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_1

    .line 305
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 307
    :cond_1
    iget-object v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 309
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 363
    :cond_2
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 311
    :pswitch_0
    iget-boolean v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mIngonreMoveEvents:Z

    if-nez v10, :cond_2

    .line 314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 315
    .local v1, "currentMoveY":F
    iget v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    .line 316
    iget v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventY:F

    sub-float v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v2, v10

    .line 317
    .local v2, "deltaDownY":I
    iget v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mTouchSlop:I

    if-le v2, v10, :cond_3

    .line 318
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    .line 319
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/NumberPicker;->onScrollStateChange(I)V

    .line 326
    .end local v2    # "deltaDownY":I
    :cond_3
    :goto_2
    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownOrMoveEventY:F

    goto :goto_1

    .line 322
    :cond_4
    iget v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v10, v1, v10

    float-to-int v3, v10

    .line 323
    .local v3, "deltaMoveY":I
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v3}, Lorg/telegram/ui/Components/NumberPicker;->scrollBy(II)V

    .line 324
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    goto :goto_2

    .line 330
    .end local v1    # "currentMoveY":F
    .end local v3    # "deltaMoveY":I
    :pswitch_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 331
    iget-object v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->cancel()V

    .line 332
    iget-object v9, p0, Lorg/telegram/ui/Components/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 333
    .local v9, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v10, 0x3e8

    iget v11, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 334
    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    float-to-int v7, v10

    .line 335
    .local v7, "initialVelocity":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinimumFlingVelocity:I

    if-le v10, v11, :cond_5

    .line 336
    invoke-direct {p0, v7}, Lorg/telegram/ui/Components/NumberPicker;->fling(I)V

    .line 337
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/NumberPicker;->onScrollStateChange(I)V

    .line 358
    :goto_3
    iget-object v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 359
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 339
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v6, v10

    .line 340
    .local v6, "eventY":I
    int-to-float v10, v6

    iget v11, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 341
    .restart local v3    # "deltaMoveY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventTime:J

    sub-long v4, v10, v12

    .line 342
    .local v4, "deltaTime":J
    iget v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mTouchSlop:I

    if-gt v3, v10, :cond_8

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_8

    .line 343
    iget v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    div-int v10, v6, v10

    add-int/lit8 v8, v10, -0x1

    .line 344
    .local v8, "selectorIndexOffset":I
    if-lez v8, :cond_7

    .line 345
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/NumberPicker;->changeValueByOne(Z)V

    .line 346
    iget-object v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    .line 356
    .end local v8    # "selectorIndexOffset":I
    :cond_6
    :goto_4
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/NumberPicker;->onScrollStateChange(I)V

    goto :goto_3

    .line 348
    .restart local v8    # "selectorIndexOffset":I
    :cond_7
    if-gez v8, :cond_6

    .line 349
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/NumberPicker;->changeValueByOne(Z)V

    .line 350
    iget-object v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 354
    .end local v8    # "selectorIndexOffset":I
    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_4

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x1

    .line 455
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    .line 456
    .local v0, "selectorIndices":[I
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_1

    if-lez p2, :cond_1

    aget v1, v0, v3

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_1

    .line 457
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-gez p2, :cond_2

    aget v1, v0, v3

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_2

    .line 461
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 464
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    .line 465
    :cond_3
    :goto_1
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_4

    .line 466
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    .line 467
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->decrementSelectorIndices([I)V

    .line 468
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValueInternal(IZ)V

    .line 469
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    aget v1, v0, v3

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_3

    .line 470
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 473
    :cond_4
    :goto_2
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 474
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    .line 475
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->incrementSelectorIndices([I)V

    .line 476
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValueInternal(IZ)V

    .line 477
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_4

    .line 478
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_2
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 633
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 640
    :goto_0
    return-void

    .line 636
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 637
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    .line 638
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheelIndices()V

    .line 639
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->tryComputeMaxWidth()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 449
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 450
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 451
    return-void
.end method

.method public setFormatter(Lorg/telegram/ui/Components/NumberPicker$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Lorg/telegram/ui/Components/NumberPicker$Formatter;

    .prologue
    .line 512
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFormatter:Lorg/telegram/ui/Components/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 518
    :goto_0
    return-void

    .line 515
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mFormatter:Lorg/telegram/ui/Components/NumberPicker$Formatter;

    .line 516
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheelIndices()V

    .line 517
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 3
    .param p1, "maxValue"    # I

    .prologue
    .line 610
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 626
    :goto_0
    return-void

    .line 613
    :cond_0
    if-gez p1, :cond_1

    .line 614
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 616
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    .line 617
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    if-ge v1, v2, :cond_2

    .line 618
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    .line 620
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 621
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 622
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheelIndices()V

    .line 623
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    .line 624
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->tryComputeMaxWidth()V

    .line 625
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    goto :goto_0

    .line 620
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .param p1, "minValue"    # I

    .prologue
    .line 587
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 603
    :goto_0
    return-void

    .line 590
    :cond_0
    if-gez p1, :cond_1

    .line 591
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 593
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    .line 594
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    if-le v1, v2, :cond_2

    .line 595
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    .line 597
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 598
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 599
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheelIndices()V

    .line 600
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    .line 601
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->tryComputeMaxWidth()V

    .line 602
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    goto :goto_0

    .line 597
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 1
    .param p1, "intervalMillis"    # J

    .prologue
    .line 575
    iput-wide p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mLongPressUpdateInterval:J

    .line 576
    return-void
.end method

.method public setOnScrollListener(Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;

    .prologue
    .line 508
    iput-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mOnScrollListener:Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;

    .line 509
    return-void
.end method

.method public setOnValueChangedListener(Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;

    .prologue
    .line 504
    iput-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mOnValueChangeListener:Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;

    .line 505
    return-void
.end method

.method public setSelectorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDivider:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 521
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/NumberPicker;->setValueInternal(IZ)V

    .line 522
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 3
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 568
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 569
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_1

    .line 570
    iput-boolean p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    .line 572
    :cond_1
    return-void

    .line 568
    .end local v0    # "wrappingAllowed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
