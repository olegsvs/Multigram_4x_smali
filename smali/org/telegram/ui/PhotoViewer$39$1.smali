.class Lorg/telegram/ui/PhotoViewer$39$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$39;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$39;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$39;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$39;

    .prologue
    .line 3225
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$39$1;->this$1:Lorg/telegram/ui/PhotoViewer$39;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 3228
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$39$1;->this$1:Lorg/telegram/ui/PhotoViewer$39;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->pickerView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3229
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$39$1;->this$1:Lorg/telegram/ui/PhotoViewer$39;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$10100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    .line 3230
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$39$1;->this$1:Lorg/telegram/ui/PhotoViewer$39;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4400(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3231
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$39$1;->this$1:Lorg/telegram/ui/PhotoViewer$39;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$39$1;->this$1:Lorg/telegram/ui/PhotoViewer$39;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3233
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$39$1;->this$1:Lorg/telegram/ui/PhotoViewer$39;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8200(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    if-nez v0, :cond_1

    .line 3234
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$39$1;->this$1:Lorg/telegram/ui/PhotoViewer$39;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 3235
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$39$1;->this$1:Lorg/telegram/ui/PhotoViewer$39;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->photosCounterView:Lorg/telegram/ui/PhotoViewer$CounterView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CounterView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$CounterView;->setVisibility(I)V

    .line 3237
    :cond_1
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusShowPhotoQualityBar:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$39$1;->this$1:Lorg/telegram/ui/PhotoViewer$39;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->photoQualityLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$10200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3238
    :cond_2
    return-void

    .line 3231
    :cond_3
    const/4 v0, 0x4

    goto :goto_0
.end method
