.class Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;
.super Landroid/view/View;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekBarWaveformView"
.end annotation


# instance fields
.field private seekBarWaveform:Lorg/telegram/ui/Components/SeekBarWaveform;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 123
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 124
    new-instance v0, Lorg/telegram/ui/Components/SeekBarWaveform;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/SeekBarWaveform;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->seekBarWaveform:Lorg/telegram/ui/Components/SeekBarWaveform;

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->seekBarWaveform:Lorg/telegram/ui/Components/SeekBarWaveform;

    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView$1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SeekBarWaveform;->setDelegate(Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;)V

    .line 134
    return-void
.end method


# virtual methods
.method public isDragging()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->seekBarWaveform:Lorg/telegram/ui/Components/SeekBarWaveform;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBarWaveform;->isDragging()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->seekBarWaveform:Lorg/telegram/ui/Components/SeekBarWaveform;

    const-string/jumbo v1, "chat_recordedVoiceProgress"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "chat_recordedVoiceProgressInner"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "chat_recordedVoiceProgress"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/SeekBarWaveform;->setColors(III)V

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->seekBarWaveform:Lorg/telegram/ui/Components/SeekBarWaveform;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SeekBarWaveform;->draw(Landroid/graphics/Canvas;)V

    .line 173
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 164
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->seekBarWaveform:Lorg/telegram/ui/Components/SeekBarWaveform;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/SeekBarWaveform;->setSize(II)V

    .line 166
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 152
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->seekBarWaveform:Lorg/telegram/ui/Components/SeekBarWaveform;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Components/SeekBarWaveform;->onTouch(IFF)Z

    move-result v0

    .line 153
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 155
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 157
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->invalidate()V

    .line 159
    :cond_1
    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 142
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->seekBarWaveform:Lorg/telegram/ui/Components/SeekBarWaveform;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SeekBarWaveform;->setProgress(F)V

    .line 143
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->invalidate()V

    .line 144
    return-void
.end method

.method public setWaveform([B)V
    .locals 1
    .param p1, "waveform"    # [B

    .prologue
    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->seekBarWaveform:Lorg/telegram/ui/Components/SeekBarWaveform;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SeekBarWaveform;->setWaveform([B)V

    .line 138
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->invalidate()V

    .line 139
    return-void
.end method
