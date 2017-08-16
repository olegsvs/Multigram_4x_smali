.class Lorg/telegram/ui/ArticleViewer$17;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ArticleViewer;

    .prologue
    .line 2277
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$17;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2280
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2281
    .local v1, "num":I
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$17;->this$0:Lorg/telegram/ui/ArticleViewer;

    # setter for: Lorg/telegram/ui/ArticleViewer;->selectedFont:I
    invoke-static {v2, v1}, Lorg/telegram/ui/ArticleViewer;->access$6202(Lorg/telegram/ui/ArticleViewer;I)I

    .line 2282
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 2283
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$17;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$6300(Lorg/telegram/ui/ArticleViewer;)[Lorg/telegram/ui/ArticleViewer$FontCell;

    move-result-object v2

    aget-object v3, v2, v0

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ArticleViewer$FontCell;->select(Z)V

    .line 2282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2283
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 2285
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$17;->this$0:Lorg/telegram/ui/ArticleViewer;

    # invokes: Lorg/telegram/ui/ArticleViewer;->updatePaintFonts()V
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$6400(Lorg/telegram/ui/ArticleViewer;)V

    .line 2286
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$17;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$5800(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    .line 2287
    return-void
.end method
