.class Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "EmojiView.java"

# interfaces
.implements Lorg/telegram/ui/Components/PagerSlidingTabStrip$IconTabProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiPagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .prologue
    .line 2448
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p2, "x1"    # Lorg/telegram/ui/Components/EmojiView$1;

    .prologue
    .line 2448
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    return-void
.end method


# virtual methods
.method public canScrollToTab(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2462
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->currentChatId:I
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$7100(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2463
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->showStickerBanHint()V

    .line 2464
    const/4 v0, 0x0

    .line 2466
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public customOnDraw(Landroid/graphics/Canvas;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "position"    # I

    .prologue
    .line 2479
    const/4 v2, 0x6

    if-ne p2, v2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getUnreadStickerSets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->dotPaint:Landroid/graphics/Paint;
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$7300(Lorg/telegram/ui/Components/EmojiView;)Landroid/graphics/Paint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2480
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int v0, v2, v3

    .line 2481
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v1, v2, v3

    .line 2482
    .local v1, "y":I
    int-to-float v2, v0

    int-to-float v3, v1

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->dotPaint:Landroid/graphics/Paint;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$7300(Lorg/telegram/ui/Components/EmojiView;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2484
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_0
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 2452
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 2453
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$6900(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 2457
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2458
    return-void

    .line 2455
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$7000(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2470
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$7000(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPageIconDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2474
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->icons:[Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$7200(Lorg/telegram/ui/Components/EmojiView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 2488
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 2489
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$6900(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 2493
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2494
    return-object v0

    .line 2491
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$7000(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 2498
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 2503
    if-eqz p1, :cond_0

    .line 2504
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2506
    :cond_0
    return-void
.end method