.class public Lorg/telegram/ui/ActionBar/ActionBar;
.super Landroid/widget/FrameLayout;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
    }
.end annotation


# instance fields
.field public actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

.field private actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

.field private actionModeAnimation:Landroid/animation/AnimatorSet;

.field private actionModeTop:Landroid/view/View;

.field private actionModeVisible:Z

.field private addToContainer:Z

.field private allowOverlayTitle:Z

.field private backButtonImageView:Landroid/widget/ImageView;

.field private castShadows:Z

.field private extraHeight:I

.field private interceptTouches:Z

.field private isBackOverlayVisible:Z

.field protected isSearchFieldVisible:Z

.field protected itemsActionModeBackgroundColor:I

.field protected itemsActionModeColor:I

.field protected itemsBackgroundColor:I

.field protected itemsColor:I

.field private lastSubtitle:Ljava/lang/CharSequence;

.field private lastTitle:Ljava/lang/CharSequence;

.field private menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

.field private occupyStatusBar:Z

.field protected parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private titleActionRunnable:Ljava/lang/Runnable;

.field private titleRightMargin:I

.field private titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    .line 53
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->addToContainer:Z

    .line 54
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->interceptTouches:Z

    .line 64
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->castShadows:Z

    .line 77
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBar$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/ActionBar$1;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/telegram/ui/ActionBar/ActionBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleActionRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ActionBar/ActionBar;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 33
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ActionBar/ActionBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ActionBar/ActionBar;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBar;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 33
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ActionBar/ActionBar;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    return-object v0
.end method

.method private createBackButtonImage()V
    .locals 6

    .prologue
    const/16 v5, 0x36

    const/4 v4, 0x0

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 97
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 98
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    const/16 v1, 0x33

    invoke-static {v5, v5, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBar$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBar$2;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private createSubtitleTextView()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 140
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v1, "actionBarDefaultSubtitle"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    const/16 v2, 0x33

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private createTitleTextView()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 167
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 170
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v1, "actionBarDefaultTitle"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 173
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    const/16 v2, 0x33

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static getCurrentActionBarHeight()I
    .locals 2

    .prologue
    .line 737
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 742
    :goto_0
    return v0

    .line 739
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_1

    .line 740
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0

    .line 742
    :cond_1
    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public closeSearchField()V
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-nez v0, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->closeSearchField()V

    goto :goto_0
.end method

.method public createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 272
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 299
    :goto_0
    return-object v1

    .line 275
    :cond_0
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBar;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 276
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    .line 277
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const-string/jumbo v3, "actionBarActionModeDefault"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setBackgroundColor(I)V

    .line 278
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;I)V

    .line 279
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_1
    invoke-virtual {v3, v2, v1, v2, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setPadding(IIII)V

    .line 280
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 281
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 282
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 283
    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 284
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setVisibility(I)V

    .line 287
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    if-nez v1, :cond_1

    .line 288
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    .line 289
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    const-string/jumbo v2, "actionBarActionModeDefaultTop"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 290
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;)V

    .line 291
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 292
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 293
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 294
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 295
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 299
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    goto/16 :goto_0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    move v1, v2

    .line 279
    goto :goto_1
.end method

.method public createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .locals 5

    .prologue
    .line 255
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 260
    :goto_0
    return-object v0

    .line 258
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBar;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    goto :goto_0
.end method

.method public getAddToContainer()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->addToContainer:Z

    return v0
.end method

.method public getBackButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getCastShadows()Z
    .locals 1

    .prologue
    .line 728
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->castShadows:Z

    return v0
.end method

.method public getOccupyStatusBar()Z
    .locals 1

    .prologue
    .line 669
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 237
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSubtitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x0

    .line 230
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 748
    const/4 v0, 0x0

    return v0
.end method

.method public hideActionMode()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 361
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    if-nez v2, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iput-boolean v6, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const-string/jumbo v3, "alpha"

    new-array v4, v8, [F

    aput v7, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 368
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    const-string/jumbo v3, "alpha"

    new-array v4, v8, [F

    aput v7, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_3

    .line 371
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 373
    :cond_3
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    .line 374
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 375
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 376
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBar$4;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/ActionBar$4;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 395
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 396
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v2, :cond_4

    .line 397
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 399
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v2, :cond_5

    .line 400
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 402
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v2, :cond_6

    .line 403
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setVisibility(I)V

    .line 405
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 406
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 407
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v2, :cond_7

    .line 408
    check-cast v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v7, v8}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 410
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    iget v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public isActionModeShowed()Z
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSearchFieldVisible()Z
    .locals 1

    .prologue
    .line 658
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 24
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 538
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 541
    .local v5, "additionalTop":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v22

    add-int v22, v22, v5

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 543
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v19

    if-eqz v19, :cond_5

    const/high16 v19, 0x42a00000    # 80.0f

    :goto_1
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    .line 548
    .local v15, "textLeft":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 549
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v19

    if-eqz v19, :cond_8

    const/high16 v19, 0x42940000    # 74.0f

    :goto_3
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    .line 550
    .local v14, "menuLeft":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getMeasuredWidth()I

    move-result v20

    add-int v20, v20, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getMeasuredHeight()I

    move-result v21

    add-int v21, v21, v5

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v14, v5, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->layout(IIII)V

    .line 553
    .end local v14    # "menuLeft":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_b

    .line 556
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v20

    sub-int v19, v19, v20

    div-int/lit8 v20, v19, 0x2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v19

    if-nez v19, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    const/high16 v19, 0x40000000    # 2.0f

    :goto_5
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    add-int v16, v20, v19

    .line 560
    .local v16, "textTop":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    add-int v20, v5, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMeasuredWidth()I

    move-result v21

    add-int v21, v21, v15

    add-int v22, v5, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v15, v1, v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout(IIII)V

    .line 562
    .end local v16    # "textTop":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 563
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v21

    sub-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    add-int v20, v20, v19

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v19

    if-nez v19, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    const/high16 v19, 0x3f800000    # 1.0f

    :goto_7
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    sub-int v16, v20, v19

    .line 564
    .restart local v16    # "textTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    add-int v20, v5, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMeasuredWidth()I

    move-result v21

    add-int v21, v21, v15

    add-int v22, v5, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v15, v1, v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout(IIII)V

    .line 567
    .end local v16    # "textTop":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getChildCount()I

    move-result v7

    .line 568
    .local v7, "childCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_8
    if-ge v12, v7, :cond_f

    .line 569
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 570
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v6, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v6, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v6, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-ne v6, v0, :cond_d

    .line 568
    :cond_3
    :goto_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 538
    .end local v5    # "additionalTop":I
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "childCount":I
    .end local v12    # "i":I
    .end local v15    # "textLeft":I
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 543
    .restart local v5    # "additionalTop":I
    :cond_5
    const/high16 v19, 0x42900000    # 72.0f

    goto/16 :goto_1

    .line 545
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v19

    if-eqz v19, :cond_7

    const/high16 v19, 0x41d00000    # 26.0f

    :goto_a
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    .restart local v15    # "textLeft":I
    goto/16 :goto_2

    .end local v15    # "textLeft":I
    :cond_7
    const/high16 v19, 0x41900000    # 18.0f

    goto :goto_a

    .line 549
    .restart local v15    # "textLeft":I
    :cond_8
    const/high16 v19, 0x42840000    # 66.0f

    goto/16 :goto_3

    :cond_9
    sub-int v19, p4, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getMeasuredWidth()I

    move-result v20

    sub-int v14, v19, v20

    goto/16 :goto_4

    .line 556
    :cond_a
    const/high16 v19, 0x40400000    # 3.0f

    goto/16 :goto_5

    .line 558
    :cond_b
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v20

    sub-int v19, v19, v20

    div-int/lit8 v16, v19, 0x2

    .restart local v16    # "textTop":I
    goto/16 :goto_6

    .line 563
    .end local v16    # "textTop":I
    :cond_c
    const/high16 v19, 0x3f800000    # 1.0f

    goto/16 :goto_7

    .line 574
    .restart local v6    # "child":Landroid/view/View;
    .restart local v7    # "childCount":I
    .restart local v12    # "i":I
    :cond_d
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 576
    .local v13, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 577
    .local v18, "width":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 581
    .local v11, "height":I
    iget v10, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 582
    .local v10, "gravity":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_e

    .line 583
    const/16 v10, 0x33

    .line 586
    :cond_e
    and-int/lit8 v4, v10, 0x7

    .line 587
    .local v4, "absoluteGravity":I
    and-int/lit8 v17, v10, 0x70

    .line 589
    .local v17, "verticalGravity":I
    and-int/lit8 v19, v4, 0x7

    sparse-switch v19, :sswitch_data_0

    .line 598
    iget v8, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 601
    .local v8, "childLeft":I
    :goto_b
    sparse-switch v17, :sswitch_data_1

    .line 612
    iget v9, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 614
    .local v9, "childTop":I
    :goto_c
    add-int v19, v8, v18

    add-int v20, v9, v11

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v8, v9, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_9

    .line 591
    .end local v8    # "childLeft":I
    .end local v9    # "childTop":I
    :sswitch_0
    sub-int v19, p4, p2

    sub-int v19, v19, v18

    div-int/lit8 v19, v19, 0x2

    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v19, v19, v20

    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v20, v0

    sub-int v8, v19, v20

    .line 592
    .restart local v8    # "childLeft":I
    goto :goto_b

    .line 594
    .end local v8    # "childLeft":I
    :sswitch_1
    sub-int v19, p4, v18

    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v20, v0

    sub-int v8, v19, v20

    .line 595
    .restart local v8    # "childLeft":I
    goto :goto_b

    .line 603
    :sswitch_2
    iget v9, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 604
    .restart local v9    # "childTop":I
    goto :goto_c

    .line 606
    .end local v9    # "childTop":I
    :sswitch_3
    sub-int v19, p5, p3

    sub-int v19, v19, v11

    div-int/lit8 v19, v19, 0x2

    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v19, v19, v20

    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v20, v0

    sub-int v9, v19, v20

    .line 607
    .restart local v9    # "childTop":I
    goto :goto_c

    .line 609
    .end local v9    # "childTop":I
    :sswitch_4
    sub-int v19, p5, p3

    sub-int v19, v19, v11

    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v20, v0

    sub-int v9, v19, v20

    .line 610
    .restart local v9    # "childTop":I
    goto :goto_c

    .line 616
    .end local v4    # "absoluteGravity":I
    .end local v6    # "child":Landroid/view/View;
    .end local v8    # "childLeft":I
    .end local v9    # "childTop":I
    .end local v10    # "gravity":I
    .end local v11    # "height":I
    .end local v13    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v17    # "verticalGravity":I
    .end local v18    # "width":I
    :cond_f
    return-void

    .line 589
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    .line 601
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 487
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 488
    .local v14, "width":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 489
    .local v10, "height":I
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    .line 490
    .local v6, "actionBarHeight":I
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 492
    .local v7, "actionBarHeightSpec":I
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v0, :cond_6

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    add-int/2addr v0, v6

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->extraHeight:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v14, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setMeasuredDimension(II)V

    .line 495
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_8

    .line 496
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v2, v7}, Landroid/widget/ImageView;->measure(II)V

    .line 497
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_7

    const/high16 v0, 0x42a00000    # 80.0f

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    .line 502
    .local v13, "textLeft":I
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 504
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-eqz v0, :cond_b

    .line 505
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_a

    const/high16 v0, 0x42940000    # 74.0f

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, v14, v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 509
    .local v12, "menuWidth":I
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0, v12, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->measure(II)V

    .line 512
    .end local v12    # "menuWidth":I
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_4

    .line 513
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getMeasuredWidth()I

    move-result v0

    :goto_5
    sub-int v0, v14, v0

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v13

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleRightMargin:I

    sub-int v8, v0, v2

    .line 515
    .local v8, "availableWidth":I
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    .line 516
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_d

    const/16 v0, 0x12

    :goto_6
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 517
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v2, -0x80000000

    invoke-static {v8, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->measure(II)V

    .line 520
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_4

    .line 521
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_e

    const/16 v0, 0xe

    :goto_7
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 522
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v2, -0x80000000

    invoke-static {v8, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->measure(II)V

    .line 526
    .end local v8    # "availableWidth":I
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getChildCount()I

    move-result v9

    .line 527
    .local v9, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_8
    if-ge v11, v9, :cond_10

    .line 528
    invoke-virtual {p0, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 529
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eq v1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eq v1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eq v1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-ne v1, v0, :cond_f

    .line 527
    :cond_5
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 492
    .end local v1    # "child":Landroid/view/View;
    .end local v9    # "childCount":I
    .end local v11    # "i":I
    .end local v13    # "textLeft":I
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 497
    :cond_7
    const/high16 v0, 0x42900000    # 72.0f

    goto/16 :goto_1

    .line 499
    :cond_8
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_9

    const/high16 v0, 0x41d00000    # 26.0f

    :goto_a
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    .restart local v13    # "textLeft":I
    goto/16 :goto_2

    .end local v13    # "textLeft":I
    :cond_9
    const/high16 v0, 0x41900000    # 18.0f

    goto :goto_a

    .line 505
    .restart local v13    # "textLeft":I
    :cond_a
    const/high16 v0, 0x42840000    # 66.0f

    goto/16 :goto_3

    .line 507
    :cond_b
    const/high16 v0, -0x80000000

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .restart local v12    # "menuWidth":I
    goto/16 :goto_4

    .line 513
    .end local v12    # "menuWidth":I
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 516
    .restart local v8    # "availableWidth":I
    :cond_d
    const/16 v0, 0x14

    goto/16 :goto_6

    .line 521
    :cond_e
    const/16 v0, 0x10

    goto :goto_7

    .line 532
    .end local v8    # "availableWidth":I
    .restart local v1    # "child":Landroid/view/View;
    .restart local v9    # "childCount":I
    .restart local v11    # "i":I
    :cond_f
    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getMeasuredHeight()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBar;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_9

    .line 534
    .end local v1    # "child":Landroid/view/View;
    :cond_10
    return-void
.end method

.method public onMenuButtonPressed()V
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onMenuButtonPressed()V

    .line 622
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->hideAllPopupMenus()V

    .line 628
    :cond_0
    return-void
.end method

.method protected onSearchFieldVisibilityChanged(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 450
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    .line 451
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v1, :cond_0

    .line 452
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 454
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v1, :cond_1

    .line 455
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 457
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 458
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    instance-of v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;

    if-eqz v1, :cond_2

    .line 459
    check-cast v0, Lorg/telegram/ui/ActionBar/MenuDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_2
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRotation(FZ)V

    .line 461
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 452
    goto :goto_0

    :cond_4
    move v2, v3

    .line 455
    goto :goto_1

    .line 459
    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 733
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->interceptTouches:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openSearchField(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 479
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->openSearchField(ZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    .prologue
    .line 264
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    .line 265
    return-void
.end method

.method public setActionModeColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setBackgroundColor(I)V

    .line 443
    :cond_0
    return-void
.end method

.method public setActionModeTopColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 428
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 431
    :cond_0
    return-void
.end method

.method public setAddToContainer(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->addToContainer:Z

    .line 149
    return-void
.end method

.method public setAllowOverlayTitle(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 631
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->allowOverlayTitle:Z

    .line 632
    return-void
.end method

.method public setBackButtonColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 252
    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 116
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createBackButtonImage()V

    .line 118
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-nez p1, :cond_2

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    instance-of v1, p1, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 121
    check-cast v0, Lorg/telegram/ui/ActionBar/BackDrawable;

    .line 122
    .local v0, "backDrawable":Lorg/telegram/ui/ActionBar/BackDrawable;
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 123
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotatedColor(I)V

    .line 124
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    .line 126
    .end local v0    # "backDrawable":Lorg/telegram/ui/ActionBar/BackDrawable;
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 118
    goto :goto_0

    .line 122
    .restart local v0    # "backDrawable":Lorg/telegram/ui/ActionBar/BackDrawable;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setBackButtonImage(I)V
    .locals 2
    .param p1, "resource"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 130
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createBackButtonImage()V

    .line 132
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    return-void

    .line 132
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCastShadows(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 724
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->castShadows:Z

    .line 725
    return-void
.end method

.method public setExtraHeight(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 468
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->extraHeight:I

    .line 469
    return-void
.end method

.method public setInterceptTouches(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 464
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->interceptTouches:Z

    .line 465
    return-void
.end method

.method public setItemsBackgroundColor(IZ)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "isActionMode"    # Z

    .prologue
    .line 673
    if-eqz p2, :cond_2

    .line 674
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    .line 675
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 680
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->updateItemsBackgroundColor()V

    .line 692
    :cond_1
    :goto_0
    return-void

    .line 684
    :cond_2
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    .line 685
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 686
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 688
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_1

    .line 689
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->updateItemsBackgroundColor()V

    goto :goto_0
.end method

.method public setItemsColor(IZ)V
    .locals 5
    .param p1, "color"    # I
    .param p2, "isActionMode"    # Z

    .prologue
    .line 695
    if-eqz p2, :cond_2

    .line 696
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeColor:I

    .line 697
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v1, :cond_0

    .line 698
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->updateItemsColor()V

    .line 700
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 701
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 702
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v1, :cond_1

    .line 703
    check-cast v0, Lorg/telegram/ui/ActionBar/BackDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotatedColor(I)V

    .line 721
    :cond_1
    :goto_0
    return-void

    .line 707
    :cond_2
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    .line 708
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 709
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    if-eqz v1, :cond_3

    .line 710
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 711
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 712
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v1, :cond_3

    .line 713
    check-cast v0, Lorg/telegram/ui/ActionBar/BackDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    .line 717
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v1, :cond_1

    .line 718
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->updateItemsColor()V

    goto :goto_0
.end method

.method public setOccupyStatusBar(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    const/4 v1, 0x0

    .line 662
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    .line 663
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 664
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    invoke-virtual {v2, v1, v0, v1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setPadding(IIII)V

    .line 666
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 664
    goto :goto_0
.end method

.method public setPopupBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->redrawPopup(I)V

    .line 216
    :cond_0
    return-void
.end method

.method public setPopupItemsColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setPopupItemsColor(I)V

    .line 210
    :cond_0
    return-void
.end method

.method public setSearchTextColor(IZ)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "placeholder"    # Z

    .prologue
    .line 434
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setSearchTextColor(IZ)V

    .line 437
    :cond_0
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 156
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createSubtitleTextView()V

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_1

    .line 160
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastSubtitle:Ljava/lang/CharSequence;

    .line 161
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :cond_1
    return-void

    .line 161
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setSubtitleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    .line 201
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createSubtitleTextView()V

    .line 203
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 204
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 182
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    .line 183
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createTitleTextView()V

    .line 185
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_1

    .line 186
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastTitle:Ljava/lang/CharSequence;

    .line 187
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :cond_1
    return-void

    .line 187
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setTitleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    .line 194
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createTitleTextView()V

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 197
    return-void
.end method

.method public setTitleOverlayText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subtitle"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x0

    .line 635
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->allowOverlayTitle:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez v1, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    if-eqz p1, :cond_6

    move-object v0, p1

    .line 639
    .local v0, "textToSet":Ljava/lang/CharSequence;
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v1, :cond_2

    .line 640
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createTitleTextView()V

    .line 642
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v1, :cond_3

    .line 643
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-nez v1, :cond_7

    move v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 644
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    :cond_3
    if-eqz p2, :cond_8

    move-object v0, p2

    .line 647
    :goto_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v1, :cond_4

    .line 648
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createSubtitleTextView()V

    .line 650
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v1, :cond_5

    .line 651
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-nez v3, :cond_9

    :goto_4
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setVisibility(I)V

    .line 652
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    :cond_5
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleActionRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 638
    .end local v0    # "textToSet":Ljava/lang/CharSequence;
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 643
    .restart local v0    # "textToSet":Ljava/lang/CharSequence;
    :cond_7
    const/4 v1, 0x4

    goto :goto_2

    .line 646
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastSubtitle:Ljava/lang/CharSequence;

    goto :goto_3

    .line 651
    :cond_9
    const/16 v2, 0x8

    goto :goto_4
.end method

.method public setTitleRightMargin(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 178
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleRightMargin:I

    .line 179
    return-void
.end method

.method public showActionMode()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 303
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    if-eqz v2, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iput-boolean v6, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const-string/jumbo v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 310
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    const-string/jumbo v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_3

    .line 313
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 315
    :cond_3
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    .line 316
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 317
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 318
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBar$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/ActionBar$3;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 350
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 351
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 352
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 353
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v2, :cond_4

    .line 354
    check-cast v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 356
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    iget v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 308
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 310
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showActionModeTop()V
    .locals 3

    .prologue
    .line 415
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    if-nez v1, :cond_0

    .line 416
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    .line 417
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    const-string/jumbo v2, "actionBarActionModeDefaultTop"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 418
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;)V

    .line 419
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 420
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 421
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 422
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 423
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method
