.class Lorg/telegram/ui/Components/ChatActivityEnterView$43;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->setStickersExpanded(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field final synthetic val$origHeight:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 3756
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->val$origHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 3760
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getTranslationY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpandedHeight:I
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9300(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->val$origHeight:I

    sub-int/2addr v2, v3

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpansionProgress:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9502(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 3761
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$43;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$9400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidate()V

    .line 3762
    return-void
.end method
