.class Lorg/telegram/ui/IntroActivity$2;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/IntroActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/IntroActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/IntroActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 223
    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$2;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    const/4 v1, 0x1

    .line 243
    if-ne p1, v1, :cond_1

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$2;->this$0:Lorg/telegram/ui/IntroActivity;

    # setter for: Lorg/telegram/ui/IntroActivity;->dragging:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/IntroActivity;->access$602(Lorg/telegram/ui/IntroActivity;Z)Z

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$2;->this$0:Lorg/telegram/ui/IntroActivity;

    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$2;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lorg/telegram/ui/IntroActivity;->access$000(Lorg/telegram/ui/IntroActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/IntroActivity$2;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v2}, Lorg/telegram/ui/IntroActivity;->access$000(Lorg/telegram/ui/IntroActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v2

    mul-int/2addr v1, v2

    # setter for: Lorg/telegram/ui/IntroActivity;->startDragX:I
    invoke-static {v0, v1}, Lorg/telegram/ui/IntroActivity;->access$702(Lorg/telegram/ui/IntroActivity;I)I

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 247
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$2;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->dragging:Z
    invoke-static {v0}, Lorg/telegram/ui/IntroActivity;->access$600(Lorg/telegram/ui/IntroActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$2;->this$0:Lorg/telegram/ui/IntroActivity;

    # setter for: Lorg/telegram/ui/IntroActivity;->justEndDragging:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/IntroActivity;->access$802(Lorg/telegram/ui/IntroActivity;Z)Z

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$2;->this$0:Lorg/telegram/ui/IntroActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/IntroActivity;->dragging:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/IntroActivity;->access$602(Lorg/telegram/ui/IntroActivity;Z)Z

    .line 251
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$2;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->lastPage:I
    invoke-static {v0}, Lorg/telegram/ui/IntroActivity;->access$900(Lorg/telegram/ui/IntroActivity;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$2;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lorg/telegram/ui/IntroActivity;->access$000(Lorg/telegram/ui/IntroActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$2;->this$0:Lorg/telegram/ui/IntroActivity;

    iget-object v1, p0, Lorg/telegram/ui/IntroActivity$2;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lorg/telegram/ui/IntroActivity;->access$000(Lorg/telegram/ui/IntroActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    # setter for: Lorg/telegram/ui/IntroActivity;->lastPage:I
    invoke-static {v0, v1}, Lorg/telegram/ui/IntroActivity;->access$902(Lorg/telegram/ui/IntroActivity;I)I

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 226
    iget-object v2, p0, Lorg/telegram/ui/IntroActivity$2;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->bottomPages:Lorg/telegram/ui/IntroActivity$BottomPagesView;
    invoke-static {v2}, Lorg/telegram/ui/IntroActivity;->access$400(Lorg/telegram/ui/IntroActivity;)Lorg/telegram/ui/IntroActivity$BottomPagesView;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lorg/telegram/ui/IntroActivity$BottomPagesView;->setPageOffset(IF)V

    .line 228
    iget-object v2, p0, Lorg/telegram/ui/IntroActivity$2;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v2}, Lorg/telegram/ui/IntroActivity;->access$000(Lorg/telegram/ui/IntroActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v2

    int-to-float v1, v2

    .line 229
    .local v1, "width":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    int-to-float v2, p1

    mul-float/2addr v2, v1

    int-to-float v3, p3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/IntroActivity$2;->this$0:Lorg/telegram/ui/IntroActivity;

    # getter for: Lorg/telegram/ui/IntroActivity;->currentViewPagerPage:I
    invoke-static {v3}, Lorg/telegram/ui/IntroActivity;->access$500(Lorg/telegram/ui/IntroActivity;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    div-float v0, v2, v1

    .line 233
    .local v0, "offset":F
    invoke-static {v0}, Lorg/telegram/messenger/Intro;->setScrollOffset(F)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$2;->this$0:Lorg/telegram/ui/IntroActivity;

    # setter for: Lorg/telegram/ui/IntroActivity;->currentViewPagerPage:I
    invoke-static {v0, p1}, Lorg/telegram/ui/IntroActivity;->access$502(Lorg/telegram/ui/IntroActivity;I)I

    .line 239
    return-void
.end method
