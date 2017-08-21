.class Lorg/telegram/ui/VoIPActivity$24;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VoIPActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPActivity;->setStateTextAnimated(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 1286
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$24;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1289
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$24;->this$0:Lorg/telegram/ui/VoIPActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/VoIPActivity;->access$3902(Lorg/telegram/ui/VoIPActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 1290
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$24;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$4000(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1291
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$24;->this$0:Lorg/telegram/ui/VoIPActivity;

    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$24;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v1}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/VoIPActivity;->access$2402(Lorg/telegram/ui/VoIPActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1292
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$24;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1293
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$24;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1294
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$24;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setScaleY(F)V

    .line 1295
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$24;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1296
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$24;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity$24;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-static {v1}, Lorg/telegram/ui/VoIPActivity;->access$4000(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1297
    return-void
.end method
