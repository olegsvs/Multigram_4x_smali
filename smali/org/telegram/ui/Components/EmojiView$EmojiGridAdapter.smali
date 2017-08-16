.class Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiGridAdapter"
.end annotation


# instance fields
.field private emojiPage:I

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0
    .param p2, "page"    # I

    .prologue
    .line 2378
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2379
    iput p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->emojiPage:I

    .line 2380
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 2389
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->emojiPage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2390
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2392
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->emojiPage:I

    aget-object v0, v0, v1

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2384
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 2397
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "paramViewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 2402
    move-object v3, p2

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 2403
    .local v3, "imageView":Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;
    if-nez v3, :cond_0

    .line 2404
    new-instance v3, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .end local v3    # "imageView":Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    .line 2408
    .restart local v3    # "imageView":Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;
    :cond_0
    iget v4, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->emojiPage:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 2409
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$1900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "code":Ljava/lang/String;
    move-object v2, v0

    .line 2417
    .local v2, "coloredCode":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/Emoji;->getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2419
    sget-boolean v4, Lorg/telegram/messenger/ApplicationLoader;->SHOW_ANDROID_EMOJI:Z

    if-eqz v4, :cond_2

    .line 2433
    :cond_2
    invoke-static {v2}, Lorg/telegram/messenger/Emoji;->getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2436
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setTag(Ljava/lang/Object;)V

    .line 2437
    return-object v3

    .line 2411
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "coloredCode":Ljava/lang/String;
    :cond_3
    sget-object v4, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    iget v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->emojiPage:I

    aget-object v4, v4, v5

    aget-object v0, v4, p1

    .restart local v0    # "code":Ljava/lang/String;
    move-object v2, v0

    .line 2412
    .restart local v2    # "coloredCode":Ljava/lang/String;
    # getter for: Lorg/telegram/ui/Components/EmojiView;->emojiColor:Ljava/util/HashMap;
    invoke-static {}, Lorg/telegram/ui/Components/EmojiView;->access$900()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2413
    .local v1, "color":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2414
    # invokes: Lorg/telegram/ui/Components/EmojiView;->addColorToCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v1}, Lorg/telegram/ui/Components/EmojiView;->access$1700(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 2442
    if-eqz p1, :cond_0

    .line 2443
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2445
    :cond_0
    return-void
.end method
