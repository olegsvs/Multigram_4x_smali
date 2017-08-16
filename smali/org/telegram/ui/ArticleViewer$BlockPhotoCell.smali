.class Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;
.super Landroid/widget/FrameLayout;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockPhotoCell"
.end annotation


# instance fields
.field private channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

.field private currentType:I

.field private imageView:Lorg/telegram/messenger/ImageReceiver;

.field private isFirst:Z

.field private isLast:Z

.field private lastCreatedWidth:I

.field private parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

.field private photoPressed:Z

.field private textLayout:Landroid/text/StaticLayout;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;I)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "type"    # I

    .prologue
    .line 5755
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 5756
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 5758
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->setWillNotDraw(Z)V

    .line 5759
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    .line 5760
    new-instance v0, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    .line 5761
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5762
    iput p3, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    .line 5764
    return-void
.end method

.method static synthetic access$15100(Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    .prologue
    .line 5739
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    return-object v0
.end method

.method static synthetic access$15200(Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;)Lorg/telegram/messenger/ImageReceiver;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    .prologue
    .line 5739
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method


# virtual methods
.method public getChannelCell()Landroid/view/View;
    .locals 1

    .prologue
    .line 5785
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 5891
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-nez v0, :cond_1

    .line 5905
    :cond_0
    :goto_0
    return-void

    .line 5894
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 5895
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2

    .line 5896
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5897
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textX:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()I

    move-result v2

    add-int/2addr v1, v2

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5898
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textLayout:Landroid/text/StaticLayout;

    # invokes: Lorg/telegram/ui/ArticleViewer;->drawLayoutLink(Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V
    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ArticleViewer;->access$9300(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V

    .line 5899
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 5900
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 5902
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->level:I

    if-lez v0, :cond_0

    .line 5903
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    const/4 v2, 0x0

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->getMeasuredHeight()I

    move-result v4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->bottom:Z

    if-eqz v0, :cond_3

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_1
    sub-int v0, v4, v0

    int-to-float v4, v0

    # getter for: Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$9400()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 5812
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v20

    .line 5813
    .local v20, "width":I
    const/4 v10, 0x0

    .line 5814
    .local v10, "height":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 5815
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$3700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getWidth()I

    move-result v20

    .line 5816
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 5820
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-eqz v2, :cond_10

    .line 5821
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->photo_id:J

    # invokes: Lorg/telegram/ui/ArticleViewer;->getPhotoWithId(J)Lorg/telegram/tgnet/TLRPC$Photo;
    invoke-static {v2, v6, v7}, Lorg/telegram/ui/ArticleViewer;->access$9800(Lorg/telegram/ui/ArticleViewer;J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v14

    .line 5822
    .local v14, "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    move/from16 v15, v20

    .line 5825
    .local v15, "photoWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->level:I

    if-lez v2, :cond_9

    .line 5826
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->level:I

    mul-int/lit8 v2, v2, 0xe

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int v16, v2, v3

    .local v16, "photoX":I
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textX:I

    .line 5827
    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int v2, v2, v16

    sub-int/2addr v15, v2

    .line 5828
    move/from16 v18, v15

    .line 5834
    .local v18, "textWidth":I
    :goto_1
    if-eqz v14, :cond_4

    .line 5835
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v11

    .line 5836
    .local v11, "image":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v3, 0x50

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v19

    .line 5837
    .local v19, "thumb":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, v19

    if-ne v11, v0, :cond_1

    .line 5838
    const/16 v19, 0x0

    .line 5840
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    if-nez v2, :cond_2

    .line 5842
    int-to-float v2, v15

    iget v3, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v3, v3

    div-float v17, v2, v3

    .line 5843
    .local v17, "scale":F
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v10, v2

    .line 5844
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v2, :cond_a

    .line 5845
    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 5856
    .end local v17    # "scale":F
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->isFirst:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    const/4 v5, 0x1

    if-eq v2, v5, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->level:I

    if-lez v2, :cond_b

    :cond_3
    const/4 v2, 0x0

    :goto_3
    move/from16 v0, v16

    invoke-virtual {v3, v0, v2, v15, v10}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 5858
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    if-nez v2, :cond_c

    .line 5859
    const/4 v4, 0x0

    .line 5863
    .local v4, "filter":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v19, :cond_d

    move-object/from16 v0, v19

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_5
    if-eqz v19, :cond_e

    const-string/jumbo v6, "80_80_b"

    :goto_6
    iget v7, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;I)V

    .line 5866
    .end local v4    # "filter":Ljava/lang/String;
    .end local v11    # "image":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v19    # "thumb":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->lastCreatedWidth:I

    move/from16 v0, v20

    if-eq v2, v0, :cond_5

    .line 5867
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    move/from16 v0, v18

    # invokes: Lorg/telegram/ui/ArticleViewer;->createLayoutForText(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;
    invoke-static {v2, v3, v5, v0, v6}, Lorg/telegram/ui/ArticleViewer;->access$9200(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textLayout:Landroid/text/StaticLayout;

    .line 5868
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_5

    .line 5869
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v10, v2

    .line 5873
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->isFirst:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->level:I

    if-gtz v2, :cond_6

    .line 5874
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v10, v2

    .line 5876
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    if-eqz v2, :cond_f

    const/4 v13, 0x1

    .line 5877
    .local v13, "nextIsChannel":Z
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    if-nez v13, :cond_7

    .line 5878
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v10, v2

    .line 5883
    .end local v13    # "nextIsChannel":Z
    .end local v14    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    .end local v15    # "photoWidth":I
    .end local v16    # "photoX":I
    .end local v18    # "textWidth":I
    :cond_7
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->measure(II)V

    .line 5884
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()I

    move-result v3

    const/high16 v5, 0x421c0000    # 39.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setTranslationY(F)V

    .line 5886
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->setMeasuredDimension(II)V

    .line 5887
    return-void

    .line 5817
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 5818
    move/from16 v10, v20

    goto/16 :goto_0

    .line 5830
    .restart local v14    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    .restart local v15    # "photoWidth":I
    :cond_9
    const/16 v16, 0x0

    .line 5831
    .restart local v16    # "photoX":I
    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textX:I

    .line 5832
    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v18, v20, v2

    .restart local v18    # "textWidth":I
    goto/16 :goto_1

    .line 5847
    .restart local v11    # "image":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v17    # "scale":F
    .restart local v19    # "thumb":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$3700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$3700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    float-to-int v12, v2

    .line 5848
    .local v12, "maxHeight":I
    if-le v10, v12, :cond_2

    .line 5849
    move v10, v12

    .line 5850
    int-to-float v2, v10

    iget v3, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float v3, v3

    div-float v17, v2, v3

    .line 5851
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v15, v2

    .line 5852
    sub-int v2, v20, v16

    sub-int/2addr v2, v15

    div-int/lit8 v2, v2, 0x2

    add-int v16, v16, v2

    goto/16 :goto_2

    .line 5856
    .end local v12    # "maxHeight":I
    .end local v17    # "scale":F
    :cond_b
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto/16 :goto_3

    .line 5861
    :cond_c
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%d_%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "filter":Ljava/lang/String;
    goto/16 :goto_4

    .line 5863
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 5876
    .end local v4    # "filter":Ljava/lang/String;
    .end local v11    # "image":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v19    # "thumb":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 5881
    .end local v14    # "photo":Lorg/telegram/tgnet/TLRPC$Photo;
    .end local v15    # "photoWidth":I
    .end local v16    # "photoX":I
    .end local v18    # "textWidth":I
    :cond_10
    const/4 v10, 0x1

    goto/16 :goto_8
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 5790
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 5791
    .local v6, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 5792
    .local v7, "y":F
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->getTranslationY()F

    move-result v0

    cmpl-float v0, v7, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->getTranslationY()F

    move-result v0

    const/high16 v1, 0x421c0000    # 39.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, v7, v0

    if-gez v0, :cond_1

    .line 5793
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->channelBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$9000(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 5794
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->channelBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$9000(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$4900(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    .line 5795
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    .line 5807
    :cond_0
    :goto_0
    return v9

    .line 5799
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5800
    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->photoPressed:Z

    .line 5807
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->photoPressed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textLayout:Landroid/text/StaticLayout;

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textX:I

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->textY:I

    move-object v1, p1

    move-object v2, p0

    # invokes: Lorg/telegram/ui/ArticleViewer;->checkLayoutForLinks(Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->access$9100(Lorg/telegram/ui/ArticleViewer;Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    move v0, v9

    :goto_2
    move v9, v0

    goto :goto_0

    .line 5801
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v9, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->photoPressed:Z

    if-eqz v0, :cond_5

    .line 5802
    iput-boolean v8, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->photoPressed:Z

    .line 5803
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer;->openPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    goto :goto_1

    .line 5804
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 5805
    iput-boolean v8, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->photoPressed:Z

    goto :goto_1

    :cond_6
    move v0, v8

    .line 5807
    goto :goto_2
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;ZZ)V
    .locals 2
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;
    .param p2, "first"    # Z
    .param p3, "last"    # Z

    .prologue
    .line 5767
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 5768
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    .line 5769
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->lastCreatedWidth:I

    .line 5770
    iput-boolean p2, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->isFirst:Z

    .line 5771
    iput-boolean p3, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->isLast:Z

    .line 5772
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setVisibility(I)V

    .line 5773
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->requestLayout()V

    .line 5774
    return-void
.end method

.method public setParentBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)V
    .locals 2
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    .line 5777
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 5778
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->channelBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$9000(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v0, :cond_0

    .line 5779
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->channelBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$9000(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;)V

    .line 5780
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setVisibility(I)V

    .line 5782
    :cond_0
    return-void
.end method
