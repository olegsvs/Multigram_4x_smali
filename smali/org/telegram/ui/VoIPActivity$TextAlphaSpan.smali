.class Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;
.super Landroid/text/style/CharacterStyle;
.source "VoIPActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/VoIPActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextAlphaSpan"
.end annotation


# instance fields
.field private alpha:I

.field final synthetic this$0:Lorg/telegram/ui/VoIPActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/VoIPActivity;)V
    .locals 1

    .prologue
    .line 1426
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;->this$0:Lorg/telegram/ui/VoIPActivity;

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 1427
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;->alpha:I

    .line 1428
    return-void
.end method


# virtual methods
.method public getAlpha()I
    .locals 1

    .prologue
    .line 1431
    iget v0, p0, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;->alpha:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 1435
    iput p1, p0, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;->alpha:I

    .line 1436
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$3400(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1437
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;->this$0:Lorg/telegram/ui/VoIPActivity;

    # getter for: Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/VoIPActivity;->access$4000(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1438
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "tp"    # Landroid/text/TextPaint;

    .prologue
    .line 1442
    iget v0, p0, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;->alpha:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1443
    return-void
.end method
