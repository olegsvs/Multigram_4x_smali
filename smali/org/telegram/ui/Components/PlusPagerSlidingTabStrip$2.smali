.class Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$2;
.super Ljava/lang/Object;
.source "PlusPagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->addTabWithCounter(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    .prologue
    .line 261
    iput-object p1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$2;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    iput p2, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 265
    iget v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$2;->val$position:I

    iget-object v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$2;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-static {v1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$200(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$2;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$600(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;)Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PlusScrollSlidingTabStripDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$2;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$600(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;)Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PlusScrollSlidingTabStripDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$PlusScrollSlidingTabStripDelegate;->onTabClick()V

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$2;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$200(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$2;->this$0:Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;->access$200(Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$2;->val$position:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method
