.class Lorg/telegram/ui/Components/RgbSelectorView$1;
.super Ljava/lang/Object;
.source "RgbSelectorView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/RgbSelectorView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/RgbSelectorView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/RgbSelectorView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/RgbSelectorView;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/telegram/ui/Components/RgbSelectorView$1;->this$0:Lorg/telegram/ui/Components/RgbSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 74
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "R"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView$1;->this$0:Lorg/telegram/ui/Components/RgbSelectorView;

    # getter for: Lorg/telegram/ui/Components/RgbSelectorView;->seekRedValue:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/Components/RgbSelectorView;->access$000(Lorg/telegram/ui/Components/RgbSelectorView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "G"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView$1;->this$0:Lorg/telegram/ui/Components/RgbSelectorView;

    # getter for: Lorg/telegram/ui/Components/RgbSelectorView;->seekGreenValue:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/Components/RgbSelectorView;->access$100(Lorg/telegram/ui/Components/RgbSelectorView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView$1;->this$0:Lorg/telegram/ui/Components/RgbSelectorView;

    # getter for: Lorg/telegram/ui/Components/RgbSelectorView;->seekBlueValue:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/Components/RgbSelectorView;->access$200(Lorg/telegram/ui/Components/RgbSelectorView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_2
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView$1;->this$0:Lorg/telegram/ui/Components/RgbSelectorView;

    # getter for: Lorg/telegram/ui/Components/RgbSelectorView;->seekAlphaValue:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/Components/RgbSelectorView;->access$300(Lorg/telegram/ui/Components/RgbSelectorView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView$1;->this$0:Lorg/telegram/ui/Components/RgbSelectorView;

    # invokes: Lorg/telegram/ui/Components/RgbSelectorView;->setPreviewImage()V
    invoke-static {v0}, Lorg/telegram/ui/Components/RgbSelectorView;->access$400(Lorg/telegram/ui/Components/RgbSelectorView;)V

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Components/RgbSelectorView$1;->this$0:Lorg/telegram/ui/Components/RgbSelectorView;

    # invokes: Lorg/telegram/ui/Components/RgbSelectorView;->onColorChanged()V
    invoke-static {v0}, Lorg/telegram/ui/Components/RgbSelectorView;->access$500(Lorg/telegram/ui/Components/RgbSelectorView;)V

    .line 89
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 69
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 65
    return-void
.end method
