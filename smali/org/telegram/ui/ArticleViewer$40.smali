.class Lorg/telegram/ui/ArticleViewer$40;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->preparePlayer(Ljava/io/File;Z)V
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
    .line 6819
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$40;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 6865
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 6866
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    .prologue
    .line 6882
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$40;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->textureUploaded:Z
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$13500(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6883
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$40;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/ArticleViewer;->textureUploaded:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$13502(Lorg/telegram/ui/ArticleViewer;Z)Z

    .line 6884
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$40;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1200(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 6886
    :cond_0
    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 6
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 6822
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$40;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$7000(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 6861
    :goto_0
    return-void

    .line 6825
    :cond_0
    if-eq p2, v3, :cond_3

    if-eq p2, v5, :cond_3

    .line 6827
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$40;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$1900(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6838
    :goto_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$40;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 6839
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$40;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    .line 6841
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$40;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$7000(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eq p2, v3, :cond_4

    .line 6842
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$40;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->isPlaying:Z
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$7300(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6843
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$40;->this$0:Lorg/telegram/ui/ArticleViewer;

    # setter for: Lorg/telegram/ui/ArticleViewer;->isPlaying:Z
    invoke-static {v1, v5}, Lorg/telegram/ui/ArticleViewer;->access$7302(Lorg/telegram/ui/ArticleViewer;Z)Z

    .line 6844
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$40;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$13400(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020119

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6845
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$40;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->updateProgressRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$12800(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 6860
    :cond_2
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$40;->this$0:Lorg/telegram/ui/ArticleViewer;

    # invokes: Lorg/telegram/ui/ArticleViewer;->updateVideoPlayerTime()V
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$12700(Lorg/telegram/ui/ArticleViewer;)V

    goto :goto_0

    .line 6828
    :catch_0
    move-exception v0

    .line 6829
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 6833
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$40;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$1900(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 6834
    :catch_1
    move-exception v0

    .line 6835
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 6847
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$40;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->isPlaying:Z
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$7300(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6848
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$40;->this$0:Lorg/telegram/ui/ArticleViewer;

    # setter for: Lorg/telegram/ui/ArticleViewer;->isPlaying:Z
    invoke-static {v1, v4}, Lorg/telegram/ui/ArticleViewer;->access$7302(Lorg/telegram/ui/ArticleViewer;Z)Z

    .line 6849
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$40;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$13400(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02011a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6850
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$40;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->updateProgressRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$12800(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 6851
    if-ne p2, v3, :cond_2

    .line 6852
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$40;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$7100(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SeekBar;->isDragging()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6853
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$40;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$7100(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/SeekBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/SeekBar;->setProgress(F)V

    .line 6854
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$40;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$12600(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 6855
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$40;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$7000(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 6856
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$40;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$7000(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    goto :goto_2
.end method

.method public onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 6890
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 6896
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 6870
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$40;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6871
    const/16 v1, 0x5a

    if-eq p3, v1, :cond_0

    const/16 v1, 0x10e

    if-ne p3, v1, :cond_1

    .line 6872
    :cond_0
    move v0, p1

    .line 6873
    .local v0, "temp":I
    move p1, p2

    .line 6874
    move p2, v0

    .line 6876
    .end local v0    # "temp":I
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$40;->this$0:Lorg/telegram/ui/ArticleViewer;

    # getter for: Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v2

    if-nez p2, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v2, v1, p3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(FI)V

    .line 6878
    :cond_2
    return-void

    .line 6876
    :cond_3
    int-to-float v1, p1

    mul-float/2addr v1, p4

    int-to-float v3, p2

    div-float/2addr v1, v3

    goto :goto_0
.end method
