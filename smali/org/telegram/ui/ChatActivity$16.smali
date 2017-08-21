.class Lorg/telegram/ui/ChatActivity$16;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1826
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 1849
    invoke-super/range {p0 .. p4}, Lorg/telegram/ui/Components/RecyclerListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    .line 1850
    .local v4, "result":Z
    instance-of v8, p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v8, :cond_0

    move-object v0, p2

    .line 1851
    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1852
    .local v0, "chatMessageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    .line 1853
    .local v2, "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    if-eqz v2, :cond_0

    .line 1854
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getStatusBG()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    .line 1855
    .local v5, "statusBG":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1856
    .local v6, "top":I
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1857
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$4900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1858
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_1

    .line 1859
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$4900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/RecyclerListView;->findViewHolderForAdapterPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1860
    if-eqz v1, :cond_1

    .line 1861
    const/high16 v8, 0x447a0000    # 1000.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    neg-int v8, v8

    invoke-virtual {v2, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageY(I)V

    .line 1862
    invoke-virtual {v2, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1863
    if-eqz v5, :cond_0

    .line 1864
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    const/high16 v9, 0x41500000    # 13.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    const/high16 v10, 0x41500000    # 13.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 1865
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1903
    .end local v0    # "chatMessageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v2    # "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    .end local v5    # "statusBG":Landroid/graphics/drawable/GradientDrawable;
    .end local v6    # "top":I
    :cond_0
    :goto_0
    return v4

    .line 1871
    .restart local v0    # "chatMessageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .restart local v2    # "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    .restart local v5    # "statusBG":Landroid/graphics/drawable/GradientDrawable;
    .restart local v6    # "top":I
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1872
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$4900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1873
    .restart local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_3

    .line 1875
    :cond_2
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$4900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/RecyclerListView;->findViewHolderForAdapterPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1876
    if-eqz v1, :cond_3

    .line 1877
    iget-object v8, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1878
    iget-object v8, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v8, v8, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v8, :cond_3

    iget-object v8, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v8, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1887
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getLayoutHeight()I

    move-result v9

    add-int v7, v8, v9

    .line 1888
    .local v7, "y":I
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$4900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/RecyclerListView;->getHeight()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$4900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingBottom()I

    move-result v9

    sub-int v3, v8, v9

    .line 1889
    .local v3, "maxY":I
    if-le v7, v3, :cond_4

    .line 1890
    move v7, v3

    .line 1892
    :cond_4
    const/high16 v8, 0x42400000    # 48.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int v8, v7, v8

    if-ge v8, v6, :cond_5

    .line 1893
    const/high16 v8, 0x42400000    # 48.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int v7, v6, v8

    .line 1895
    :cond_5
    const/high16 v8, 0x42300000    # 44.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int v8, v7, v8

    invoke-virtual {v2, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageY(I)V

    .line 1896
    invoke-virtual {v2, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1897
    if-eqz v5, :cond_0

    .line 1898
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    const/high16 v9, 0x41500000    # 13.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    const/high16 v10, 0x41500000    # 13.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 1899
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v7, 0x0

    .line 1829
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 1830
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5, v7}, Lorg/telegram/ui/ChatActivity;->access$8002(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 1831
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$16;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$8100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$8200(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1832
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$16;->getChildCount()I

    move-result v2

    .line 1833
    .local v2, "childCount":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1834
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatActivity$16;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1835
    .local v1, "child":Landroid/view/View;
    instance-of v5, v1, Lorg/telegram/ui/Cells/BotHelpCell;

    if-eqz v5, :cond_1

    .line 1836
    sub-int v3, p5, p3

    .line 1837
    .local v3, "height":I
    div-int/lit8 v5, v3, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    .line 1838
    .local v4, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v4, :cond_0

    .line 1839
    sub-int v5, p4, p2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v1, v7, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 1845
    .end local v0    # "a":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v3    # "height":I
    .end local v4    # "top":I
    :cond_0
    return-void

    .line 1833
    .restart local v0    # "a":I
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "childCount":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
