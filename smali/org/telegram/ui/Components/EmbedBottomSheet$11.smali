.class Lorg/telegram/ui/Components/EmbedBottomSheet$11;
.super Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegate;
.source "EmbedBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmbedBottomSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmbedBottomSheet;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/EmbedBottomSheet;

    .prologue
    .line 642
    iput-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$11;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public canDismiss()Z
    .locals 3

    .prologue
    .line 673
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$11;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/WebPlayerView;->isInFullscreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 674
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$11;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/WebPlayerView;->exitFullscreen()V

    .line 675
    const/4 v1, 0x0

    .line 682
    :goto_0
    return v1

    .line 678
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$11;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->parentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1400(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 679
    :catch_0
    move-exception v0

    .line 680
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onOpenAnimationEnd()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 645
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$11;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$11;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->embedUrl:Ljava/lang/String;
    invoke-static {v4}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$11;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->openUrl:Ljava/lang/String;
    invoke-static {v5}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$3800(Lorg/telegram/ui/Components/EmbedBottomSheet;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v8, v5, v9}, Lorg/telegram/ui/Components/WebPlayerView;->loadVideo(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Photo;Ljava/lang/String;Z)Z

    move-result v2

    .line 646
    .local v2, "handled":Z
    if-eqz v2, :cond_0

    .line 647
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$11;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;
    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 648
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$11;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;
    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$200(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 649
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$11;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/WebPlayerView;->setVisibility(I)V

    .line 669
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$11;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;
    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 652
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$11;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;
    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$200(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 653
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$11;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;
    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$200(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/webkit/WebView;->setKeepScreenOn(Z)V

    .line 654
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$11;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/WebPlayerView;->setVisibility(I)V

    .line 655
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$11;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/WebPlayerView;->getControlsView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 656
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$11;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureView()Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/TextureView;->setVisibility(I)V

    .line 657
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$11;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureImageView()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 658
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$11;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/WebPlayerView;->getTextureImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 660
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$11;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->videoView:Lorg/telegram/ui/Components/WebPlayerView;
    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Lorg/telegram/ui/Components/WebPlayerView;

    move-result-object v3

    invoke-virtual {v3, v8, v8, v8, v7}, Lorg/telegram/ui/Components/WebPlayerView;->loadVideo(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Photo;Ljava/lang/String;Z)Z

    .line 661
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 662
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "Referer"

    const-string/jumbo v4, "http://youtube.com"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$11;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->webView:Landroid/webkit/WebView;
    invoke-static {v3}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$200(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebView;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$11;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    # getter for: Lorg/telegram/ui/Components/EmbedBottomSheet;->embedUrl:Ljava/lang/String;
    invoke-static {v4}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 665
    :catch_0
    move-exception v1

    .line 666
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
