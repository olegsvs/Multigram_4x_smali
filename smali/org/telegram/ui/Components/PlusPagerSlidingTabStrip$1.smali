.class Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$1;
.super Ljava/lang/Object;
.source "PlusPagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    .prologue
    .line 201
    iput-object p1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 209
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    iget-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    # getter for: Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$200(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->currentPosition:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$102(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;I)I

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    iget-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    # getter for: Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->currentPosition:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$100(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;)I

    move-result v1

    # setter for: Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->currentPage:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$302(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;I)I

    .line 213
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusTabTitlesMode:Z

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    iget-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    # getter for: Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->currentPosition:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$100(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;)I

    move-result v1

    const/4 v2, 0x0

    # invokes: Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->scrollToChild2(IF)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$400(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;IF)V

    .line 218
    :goto_1
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    iget-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$1;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    # getter for: Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->currentPosition:I
    invoke-static {v1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$100(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;)I

    move-result v1

    const/4 v2, 0x0

    # invokes: Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->scrollToChild(II)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$500(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;II)V

    goto :goto_1
.end method