.class public Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;
.super Landroid/widget/FrameLayout;
.source "FeaturedStickerSetInfoCell.java"


# instance fields
.field private addButton:Landroid/widget/TextView;

.field private addDrawable:Landroid/graphics/drawable/Drawable;

.field private angle:I

.field private botProgressPaint:Landroid/graphics/Paint;

.field private delDrawable:Landroid/graphics/drawable/Drawable;

.field private drawProgress:Z

.field drawable:Landroid/graphics/drawable/Drawable;

.field private hasOnClick:Z

.field private infoTextView:Landroid/widget/TextView;

.field private isInstalled:Z

.field private lastUpdateTime:J

.field private nameTextView:Landroid/widget/TextView;

.field private progressAlpha:F

.field private rect:Landroid/graphics/RectF;

.field private set:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "left"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v0, -0x2

    const/high16 v10, 0x41880000    # 17.0f

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 89
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->rect:Landroid/graphics/RectF;

    .line 52
    new-instance v1, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$1;-><init>(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->drawable:Landroid/graphics/drawable/Drawable;

    .line 90
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "theme"

    invoke-virtual {v1, v2, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 92
    .local v7, "themePrefs":Landroid/content/SharedPreferences;
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const-string/jumbo v2, "featuredStickers_delButton"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "featuredStickers_delButtonPressed"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->delDrawable:Landroid/graphics/drawable/Drawable;

    .line 93
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const-string/jumbo v1, "featuredStickers_addButton"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "chatEmojiViewTabColor"

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    invoke-interface {v7, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    invoke-static {v2, v3, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addDrawable:Landroid/graphics/drawable/Drawable;

    .line 95
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->botProgressPaint:Landroid/graphics/Paint;

    .line 96
    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->botProgressPaint:Landroid/graphics/Paint;

    const-string/jumbo v2, "featuredStickers_buttonProgress"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->botProgressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 98
    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->botProgressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->botProgressPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 101
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->nameTextView:Landroid/widget/TextView;

    .line 102
    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "chat_emojiPanelTrendingTitle"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 104
    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 105
    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->nameTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 106
    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 107
    iget-object v8, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->nameTextView:Landroid/widget/TextView;

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x33

    int-to-float v3, p2

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v8, v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->infoTextView:Landroid/widget/TextView;

    .line 110
    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->infoTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "chat_emojiPanelTrendingDescription"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->infoTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v1, v9, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 112
    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->infoTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 113
    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 114
    iget-object v8, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->infoTextView:Landroid/widget/TextView;

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x33

    int-to-float v3, p2

    const/high16 v4, 0x41f00000    # 30.0f

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v8, v1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    new-instance v1, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell$2;-><init>(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Landroid/widget/TextView;

    .line 153
    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Landroid/widget/TextView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v2, v11, v3, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 154
    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 155
    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Landroid/widget/TextView;

    const-string/jumbo v2, "featuredStickers_buttonText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v9, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 157
    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Landroid/widget/TextView;

    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 158
    iget-object v8, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Landroid/widget/TextView;

    const/high16 v1, 0x41e00000    # 28.0f

    const/16 v2, 0x35

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v5, 0x41600000    # 14.0f

    move v3, v6

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    return-void

    .line 93
    :cond_0
    const-string/jumbo v1, "featuredStickers_addButtonPressed"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    .prologue
    .line 34
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->drawProgress:Z

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    .prologue
    .line 34
    iget v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->progressAlpha:F

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;
    .param p1, "x1"    # F

    .prologue
    .line 34
    iput p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->progressAlpha:F

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->botProgressPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->rect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    .prologue
    .line 34
    iget v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->angle:I

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->angle:I

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;

    .prologue
    .line 34
    iget-wide v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->lastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;
    .param p1, "x1"    # J

    .prologue
    .line 34
    iput-wide p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->lastUpdateTime:J

    return-wide p1
.end method


# virtual methods
.method public getStickerSet()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->set:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    return-object v0
.end method

.method public isInstalled()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 163
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 164
    return-void
.end method

.method public setAddOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->hasOnClick:Z

    .line 168
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    return-void
.end method

.method public setDrawProgress(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 201
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->drawProgress:Z

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->lastUpdateTime:J

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 204
    return-void
.end method

.method public setStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;Z)V
    .locals 4
    .param p1, "stickerSet"    # Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    .param p2, "unread"    # Z

    .prologue
    const/4 v3, 0x0

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->lastUpdateTime:J

    .line 173
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->nameTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->infoTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "Stickers"

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->count:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    if-eqz p2, :cond_0

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->nameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 180
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->hasOnClick:Z

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/query/StickersQuery;->isStickerPackInstalled(J)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->isInstalled:Z

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->delDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Landroid/widget/TextView;

    const-string/jumbo v1, "StickersRemove"

    const v2, 0x7f0706b7

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :goto_1
    iput-object p1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->set:Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 194
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Landroid/widget/TextView;

    const-string/jumbo v1, "Add"

    const v2, 0x7f070046

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 190
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/FeaturedStickerSetInfoCell;->addButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
