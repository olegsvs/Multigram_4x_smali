.class Lorg/telegram/ui/ArticleViewer$BlockFooterCell;
.super Landroid/view/View;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockFooterCell"
.end annotation


# instance fields
.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

.field private lastCreatedWidth:I

.field private textLayout:Landroid/text/StaticLayout;

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 6263
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 6264
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 6258
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->textX:I

    .line 6259
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->textY:I

    .line 6265
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 6312
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    if-nez v0, :cond_1

    .line 6325
    :cond_0
    :goto_0
    return-void

    .line 6315
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2

    .line 6316
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6317
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->textX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->textY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6318
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->textLayout:Landroid/text/StaticLayout;

    # invokes: Lorg/telegram/ui/ArticleViewer;->drawLayoutLink(Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V
    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ArticleViewer;->access$9300(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V

    .line 6319
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 6320
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 6322
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;->level:I

    if-lez v0, :cond_0

    .line 6323
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v1, v0

    const/4 v2, 0x0

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->getMeasuredHeight()I

    move-result v4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;->bottom:Z

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
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x41900000    # 18.0f

    const/high16 v7, 0x41000000    # 8.0f

    .line 6280
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 6281
    .local v1, "width":I
    const/4 v0, 0x0

    .line 6283
    .local v0, "height":I
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    if-eqz v2, :cond_3

    .line 6284
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;->level:I

    if-nez v2, :cond_1

    .line 6285
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->textY:I

    .line 6286
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->textX:I

    .line 6291
    :goto_0
    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->lastCreatedWidth:I

    if-eq v2, v1, :cond_0

    .line 6292
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v1, v5

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->textX:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    # invokes: Lorg/telegram/ui/ArticleViewer;->createLayoutForText(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;
    invoke-static {v2, v3, v4, v5, v6}, Lorg/telegram/ui/ArticleViewer;->access$9200(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->textLayout:Landroid/text/StaticLayout;

    .line 6293
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_0

    .line 6294
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    .line 6295
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;->level:I

    if-lez v2, :cond_2

    .line 6296
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 6307
    :cond_0
    :goto_1
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->setMeasuredDimension(II)V

    .line 6308
    return-void

    .line 6288
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->textY:I

    .line 6289
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;->level:I

    mul-int/lit8 v2, v2, 0xe

    add-int/lit8 v2, v2, 0x12

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->textX:I

    goto :goto_0

    .line 6298
    :cond_2
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 6304
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6275
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->textLayout:Landroid/text/StaticLayout;

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->textX:I

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->textY:I

    move-object v1, p1

    move-object v2, p0

    # invokes: Lorg/telegram/ui/ArticleViewer;->checkLayoutForLinks(Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->access$9100(Lorg/telegram/ui/ArticleViewer;Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;)V
    .locals 1
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    .prologue
    .line 6268
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    .line 6269
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->lastCreatedWidth:I

    .line 6270
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->requestLayout()V

    .line 6271
    return-void
.end method
