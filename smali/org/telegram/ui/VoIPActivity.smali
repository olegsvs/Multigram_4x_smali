.class public Lorg/telegram/ui/VoIPActivity;
.super Landroid/app/Activity;
.source "VoIPActivity.java"

# interfaces
.implements Lorg/telegram/messenger/voip/VoIPService$StateListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "tg-voip-ui"


# instance fields
.field private acceptBtn:Landroid/view/View;

.field private acceptSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

.field private blurOverlayView1:Landroid/widget/ImageView;

.field private blurOverlayView2:Landroid/widget/ImageView;

.field private blurredPhoto1:Landroid/graphics/Bitmap;

.field private blurredPhoto2:Landroid/graphics/Bitmap;

.field private callState:I

.field private cancelBtn:Landroid/view/View;

.field private chatBtn:Landroid/widget/ImageView;

.field private content:Landroid/widget/FrameLayout;

.field private currentAcceptAnim:Landroid/animation/Animator;

.field private currentDeclineAnim:Landroid/animation/Animator;

.field private declineBtn:Landroid/view/View;

.field private declineSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

.field private didAcceptFromHere:Z

.field private durationText:Landroid/widget/TextView;

.field private ellAnimator:Landroid/animation/AnimatorSet;

.field private ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

.field private emojiAnimator:Landroid/animation/AnimatorSet;

.field emojiExpanded:Z

.field private emojiExpandedText:Landroid/widget/TextView;

.field emojiTooltipVisible:Z

.field private emojiWrap:Landroid/widget/LinearLayout;

.field private endBtn:Landroid/view/View;

.field private endBtnBg:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

.field private endBtnIcon:Landroid/view/View;

.field private firstStateChange:Z

.field private hintTextView:Landroid/widget/TextView;

.field private isIncomingWaiting:Z

.field private keyEmojiViews:[Landroid/widget/ImageView;

.field private keyEmojiVisible:Z

.field private lastStateText:Ljava/lang/String;

.field private micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

.field private nameText:Landroid/widget/TextView;

.field private photoView:Lorg/telegram/ui/Components/BackupImageView;

.field private retryAnim:Landroid/animation/AnimatorSet;

.field private retrying:Z

.field private spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

.field private stateText:Landroid/widget/TextView;

.field private stateText2:Landroid/widget/TextView;

.field private swipeViewsWrap:Landroid/widget/LinearLayout;

.field private textChangingAnim:Landroid/animation/Animator;

.field private tooltipAnim:Landroid/animation/Animator;

.field private tooltipHider:Ljava/lang/Runnable;

.field private user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->firstStateChange:Z

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->didAcceptFromHere:Z

    .line 119
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/telegram/ui/VoIPActivity;->keyEmojiViews:[Landroid/widget/ImageView;

    .line 1423
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/VoIPActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPActivity;->updateBlurredPhotos(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/VoIPActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->showDebugAlert()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/VoIPActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->didAcceptFromHere:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/VoIPActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPActivity;->didAcceptFromHere:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/VoIPActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->callAccepted()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/VoIPActivity;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->currentDeclineAnim:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/VoIPActivity;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->currentDeclineAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->declineBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/VoIPActivity;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->currentAcceptAnim:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/VoIPActivity;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->currentAcceptAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->acceptBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/VoIPActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPActivity;->setEmojiTooltipVisible(Z)V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/VoIPActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->tooltipHider:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/VoIPActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->tooltipHider:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/VoIPActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPActivity;->setEmojiExpanded(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/VoIPActivity;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->ellAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->content:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/VoIPActivity;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->getFormattedDebugString()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/VoIPActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget v0, p0, Lorg/telegram/ui/VoIPActivity;->callState:I

    return v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->durationText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/VoIPActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->durationText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->swipeViewsWrap:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/VoIPActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->retryAnim:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->cancelBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/VoIPActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->firstStateChange:Z

    return v0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/VoIPActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPActivity;->firstStateChange:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/VoIPActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->retrying:Z

    return v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/VoIPActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->isIncomingWaiting:Z

    return v0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/VoIPActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPActivity;->isIncomingWaiting:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/VoIPActivity;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/VoIPActivity;->setStateTextAnimated(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->endBtnIcon:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/VoIPActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->showRetry()V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/ui/VoIPActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->startUpdatingCallDuration()V

    return-void
.end method

.method static synthetic access$3700(Lorg/telegram/ui/VoIPActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->updateKeyView()V

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/ui/VoIPActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPActivity;->showErrorDialog(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$3902(Lorg/telegram/ui/VoIPActivity;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->textChangingAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4102(Lorg/telegram/ui/VoIPActivity;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->tooltipAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$4202(Lorg/telegram/ui/VoIPActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->emojiAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/VoIPActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->blurredPhoto1:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4302(Lorg/telegram/ui/VoIPActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->blurredPhoto1:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4400(Lorg/telegram/ui/VoIPActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->blurredPhoto2:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4402(Lorg/telegram/ui/VoIPActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->blurredPhoto2:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4500(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/VoIPActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->hideRetry()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CheckableImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CheckableImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CallSwipeView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->acceptSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CallSwipeView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/VoIPActivity;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->declineSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

    return-object v0
.end method

.method private callAccepted()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 911
    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 912
    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setVisibility(I)V

    .line 913
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 914
    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setVisibility(I)V

    .line 915
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 916
    iget-boolean v4, p0, Lorg/telegram/ui/VoIPActivity;->didAcceptFromHere:Z

    if-eqz v4, :cond_2

    .line 917
    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->acceptBtn:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 919
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    .line 920
    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->endBtnBg:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    const-string/jumbo v5, "color"

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 925
    .local v1, "colorAnim":Landroid/animation/ObjectAnimator;
    :goto_0
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 926
    .local v3, "set":Landroid/animation/AnimatorSet;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 927
    .local v2, "decSet":Landroid/animation/AnimatorSet;
    const/4 v4, 0x5

    new-array v4, v4, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_1

    .line 928
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_2

    .line 929
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v10

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    const-string/jumbo v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_3

    .line 930
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->endBtnIcon:Landroid/view/View;

    const-string/jumbo v6, "rotation"

    new-array v7, v8, [F

    fill-array-data v7, :array_4

    .line 931
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v12

    const/4 v5, 0x4

    aput-object v1, v4, v5

    .line 927
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 934
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 935
    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 936
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 937
    .local v0, "accSet":Landroid/animation/AnimatorSet;
    new-array v4, v8, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->swipeViewsWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_5

    .line 938
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->declineBtn:Landroid/view/View;

    const-string/jumbo v6, "alpha"

    new-array v7, v10, [F

    aput v11, v7, v9

    .line 939
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v10

    .line 937
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 941
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 942
    const-wide/16 v4, 0x7d

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 943
    new-array v4, v8, [Landroid/animation/Animator;

    aput-object v2, v4, v9

    aput-object v0, v4, v10

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 947
    new-instance v4, Lorg/telegram/ui/VoIPActivity$18;

    invoke-direct {v4, p0}, Lorg/telegram/ui/VoIPActivity$18;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 954
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 987
    .end local v1    # "colorAnim":Landroid/animation/ObjectAnimator;
    :goto_1
    return-void

    .line 922
    .end local v0    # "accSet":Landroid/animation/AnimatorSet;
    .end local v2    # "decSet":Landroid/animation/AnimatorSet;
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->endBtnBg:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    const-string/jumbo v5, "color"

    new-array v6, v8, [I

    fill-array-data v6, :array_6

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 923
    .restart local v1    # "colorAnim":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto/16 :goto_0

    .line 956
    .end local v1    # "colorAnim":Landroid/animation/ObjectAnimator;
    :cond_2
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 957
    .restart local v3    # "set":Landroid/animation/AnimatorSet;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 958
    .restart local v2    # "decSet":Landroid/animation/AnimatorSet;
    new-array v4, v12, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_7

    .line 959
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_8

    .line 960
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v10

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    const-string/jumbo v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_9

    .line 961
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v8

    .line 958
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 963
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 964
    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 965
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 966
    .restart local v0    # "accSet":Landroid/animation/AnimatorSet;
    new-array v4, v12, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->swipeViewsWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_a

    .line 967
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->declineBtn:Landroid/view/View;

    const-string/jumbo v6, "alpha"

    new-array v7, v10, [F

    aput v11, v7, v9

    .line 968
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v10

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->acceptBtn:Landroid/view/View;

    const-string/jumbo v6, "alpha"

    new-array v7, v10, [F

    aput v11, v7, v9

    .line 969
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v8

    .line 966
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 971
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 972
    const-wide/16 v4, 0x7d

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 973
    new-array v4, v8, [Landroid/animation/Animator;

    aput-object v2, v4, v9

    aput-object v0, v4, v10

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 977
    new-instance v4, Lorg/telegram/ui/VoIPActivity$19;

    invoke-direct {v4, p0}, Lorg/telegram/ui/VoIPActivity$19;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 985
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1

    .line 920
    :array_0
    .array-data 4
        -0xba43b3
        -0x19e1bc
    .end array-data

    .line 927
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 928
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 929
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 930
    :array_4
    .array-data 4
        -0x3cf90000    # -135.0f
        0x0
    .end array-data

    .line 937
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 922
    :array_6
    .array-data 4
        -0xba43b3
        -0x19e1bc
    .end array-data

    .line 958
    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 959
    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 960
    :array_9
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 966
    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private createAlphaAnimator(Ljava/lang/Object;IIII)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "startVal"    # I
    .param p3, "endVal"    # I
    .param p4, "startDelay"    # I
    .param p5, "duration"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObjectAnimatorBinding"
        }
    .end annotation

    .prologue
    .line 707
    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 708
    .local v0, "a":Landroid/animation/ObjectAnimator;
    int-to-long v2, p5

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 709
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 710
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 711
    return-object v0
.end method

.method private createContentView()Landroid/view/View;
    .locals 39

    .prologue
    .line 446
    new-instance v18, Landroid/widget/FrameLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 447
    .local v18, "content":Landroid/widget/FrameLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 449
    new-instance v31, Lorg/telegram/ui/VoIPActivity$10;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/VoIPActivity$10;-><init>(Lorg/telegram/ui/VoIPActivity;Landroid/content/Context;)V

    .line 467
    .local v31, "photo":Lorg/telegram/ui/Components/BackupImageView;
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->photoView:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 468
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    .line 469
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 471
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 472
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    .line 473
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 475
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 477
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 478
    .local v13, "branding":Landroid/widget/TextView;
    const v3, -0x33000001    # -1.3421772E8f

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 479
    const-string/jumbo v3, "VoipInCallBranding"

    const v4, 0x7f070757

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/VoIPActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 481
    .local v26, "logo":Landroid/graphics/drawable/Drawable;
    const/16 v3, 0xcc

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 482
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v7, 0x41700000    # 15.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 483
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_1

    .end local v26    # "logo":Landroid/graphics/drawable/Drawable;
    :goto_1
    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v13, v3, v4, v0, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 484
    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 485
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    :goto_2
    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 486
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 487
    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v13, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 488
    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x33

    const/high16 v6, 0x41900000    # 18.0f

    const/high16 v7, 0x41900000    # 18.0f

    const/high16 v8, 0x41900000    # 18.0f

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    new-instance v30, Landroid/widget/TextView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 491
    .local v30, "name":Landroid/widget/TextView;
    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->setSingleLine()V

    .line 492
    const/4 v3, -0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 493
    const/4 v3, 0x1

    const/high16 v4, 0x42200000    # 40.0f

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 494
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 495
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x5

    :goto_3
    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 496
    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    const v5, 0x3f2aaaab

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x4c000000    # 3.3554432E7f

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 497
    const-string/jumbo v3, "sans-serif-light"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 498
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->nameText:Landroid/widget/TextView;

    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x33

    const/high16 v6, 0x41900000    # 18.0f

    const/high16 v7, 0x422c0000    # 43.0f

    const/high16 v8, 0x41900000    # 18.0f

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    new-instance v35, Landroid/widget/TextView;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 501
    .local v35, "state":Landroid/widget/TextView;
    const v3, -0x33000001    # -1.3421772E8f

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 502
    invoke-virtual/range {v35 .. v35}, Landroid/widget/TextView;->setSingleLine()V

    .line 503
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 504
    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 505
    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    const v5, 0x3f2aaaab

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x4c000000    # 3.3554432E7f

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 506
    const/4 v3, 0x1

    const/high16 v4, 0x41700000    # 15.0f

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 507
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x5

    :goto_4
    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 509
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x33

    const/high16 v6, 0x41900000    # 18.0f

    const/high16 v7, 0x42c40000    # 98.0f

    const/high16 v8, 0x41900000    # 18.0f

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->durationText:Landroid/widget/TextView;

    .line 512
    new-instance v35, Landroid/widget/TextView;

    .end local v35    # "state":Landroid/widget/TextView;
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 513
    .restart local v35    # "state":Landroid/widget/TextView;
    const v3, -0x33000001    # -1.3421772E8f

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 514
    invoke-virtual/range {v35 .. v35}, Landroid/widget/TextView;->setSingleLine()V

    .line 515
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 516
    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 517
    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    const v5, 0x3f2aaaab

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x4c000000    # 3.3554432E7f

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 518
    const/4 v3, 0x1

    const/high16 v4, 0x41700000    # 15.0f

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 519
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    :goto_5
    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 521
    const/16 v3, 0x8

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x33

    const/high16 v6, 0x41900000    # 18.0f

    const/high16 v7, 0x42c40000    # 98.0f

    const/high16 v8, 0x41900000    # 18.0f

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    const/4 v3, 0x3

    new-array v3, v3, [Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v4, 0x0

    new-instance v5, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    .line 526
    new-instance v28, Lorg/telegram/ui/Components/voip/CheckableImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/voip/CheckableImageView;-><init>(Landroid/content/Context;)V

    .line 527
    .local v28, "mic":Lorg/telegram/ui/Components/voip/CheckableImageView;
    const v3, 0x7f020027

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setBackgroundResource(I)V

    .line 528
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/VoIPActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200f0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v29

    .line 529
    .local v29, "micIcon":Landroid/graphics/drawable/Drawable;
    const/16 v3, 0xcc

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 530
    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 531
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 532
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const/16 v3, 0x26

    const/high16 v4, 0x42180000    # 38.0f

    const/16 v5, 0x53

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    new-instance v33, Lorg/telegram/ui/Components/voip/CheckableImageView;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/voip/CheckableImageView;-><init>(Landroid/content/Context;)V

    .line 535
    .local v33, "speaker":Lorg/telegram/ui/Components/voip/CheckableImageView;
    const v3, 0x7f020027

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setBackgroundResource(I)V

    .line 536
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/VoIPActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020117

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v34

    .line 537
    .local v34, "speakerIcon":Landroid/graphics/drawable/Drawable;
    const/16 v3, 0xcc

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 538
    invoke-virtual/range {v33 .. v34}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 539
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 540
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const/16 v3, 0x26

    const/high16 v4, 0x42180000    # 38.0f

    const/16 v5, 0x55

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    new-instance v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 543
    .local v16, "chat":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/VoIPActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 544
    .local v17, "chatIcon":Landroid/graphics/drawable/Drawable;
    const/16 v3, 0xcc

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 545
    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 546
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 547
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    const/16 v3, 0x26

    const/high16 v4, 0x42180000    # 38.0f

    const/16 v5, 0x51

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 549
    new-instance v36, Landroid/widget/LinearLayout;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 550
    .local v36, "swipesWrap":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 552
    new-instance v12, Lorg/telegram/ui/Components/voip/CallSwipeView;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/voip/CallSwipeView;-><init>(Landroid/content/Context;)V

    .line 553
    .local v12, "acceptSwipe":Lorg/telegram/ui/Components/voip/CallSwipeView;
    const v3, -0xba43b3

    invoke-virtual {v12, v3}, Lorg/telegram/ui/Components/voip/CallSwipeView;->setColor(I)V

    .line 554
    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/VoIPActivity;->acceptSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

    const/4 v3, -0x1

    const/16 v4, 0x46

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x4

    const/4 v7, 0x4

    const/16 v8, -0x23

    const/4 v9, 0x4

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    new-instance v20, Lorg/telegram/ui/Components/voip/CallSwipeView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/voip/CallSwipeView;-><init>(Landroid/content/Context;)V

    .line 557
    .local v20, "declineSwipe":Lorg/telegram/ui/Components/voip/CallSwipeView;
    const v3, -0x19e1bc

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/voip/CallSwipeView;->setColor(I)V

    .line 558
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->declineSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

    const/4 v3, -0x1

    const/16 v4, 0x46

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, -0x23

    const/4 v7, 0x4

    const/4 v8, 0x4

    const/4 v9, 0x4

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v36

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->swipeViewsWrap:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x50

    const/high16 v6, 0x41a00000    # 20.0f

    const/4 v7, 0x0

    const/high16 v8, 0x41a00000    # 20.0f

    const/high16 v9, 0x42880000    # 68.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 562
    new-instance v10, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 563
    .local v10, "acceptBtn":Landroid/widget/ImageView;
    new-instance v11, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    invoke-direct {v11}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;-><init>()V

    .line 564
    .local v11, "acceptBtnBg":Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;
    const v3, -0xba43b3

    invoke-virtual {v11, v3}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;->setColor(I)V

    .line 565
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 566
    const v3, 0x7f0200d6

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 567
    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 568
    new-instance v27, Landroid/graphics/Matrix;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Matrix;-><init>()V

    .line 569
    .local v27, "matrix":Landroid/graphics/Matrix;
    const/high16 v3, 0x41880000    # 17.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41880000    # 17.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 570
    const/high16 v3, -0x3cf90000    # -135.0f

    const/high16 v4, 0x420c0000    # 35.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x420c0000    # 35.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 571
    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 572
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/telegram/ui/VoIPActivity;->acceptBtn:Landroid/view/View;

    const/16 v3, 0x4e

    const/high16 v4, 0x429c0000    # 78.0f

    const/16 v5, 0x53

    const/high16 v6, 0x41a00000    # 20.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x42880000    # 68.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    new-instance v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 575
    .local v19, "declineBtn":Landroid/widget/ImageView;
    new-instance v32, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    invoke-direct/range {v32 .. v32}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;-><init>()V

    .line 576
    .local v32, "rejectBtnBg":Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;
    const v3, -0x19e1bc

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;->setColor(I)V

    .line 577
    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 578
    const v3, 0x7f0200d6

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 579
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 580
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->declineBtn:Landroid/view/View;

    const/16 v3, 0x4e

    const/high16 v4, 0x429c0000    # 78.0f

    const/16 v5, 0x55

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x41a00000    # 20.0f

    const/high16 v9, 0x42880000    # 68.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    const/4 v3, 0x0

    invoke-virtual {v12, v10, v3}, Lorg/telegram/ui/Components/voip/CallSwipeView;->setViewToDrag(Landroid/view/View;Z)V

    .line 583
    const/4 v3, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/voip/CallSwipeView;->setViewToDrag(Landroid/view/View;Z)V

    .line 585
    new-instance v22, Landroid/widget/FrameLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 586
    .local v22, "end":Landroid/widget/FrameLayout;
    new-instance v23, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    invoke-direct/range {v23 .. v23}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;-><init>()V

    .line 587
    .local v23, "endBtnBg":Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;
    const v3, -0x19e1bc

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;->setColor(I)V

    .line 588
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->endBtnBg:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    invoke-virtual/range {v22 .. v23}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 589
    new-instance v24, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 590
    .local v24, "endInner":Landroid/widget/ImageView;
    const v3, 0x7f0200d6

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 591
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 592
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->endBtnIcon:Landroid/view/View;

    const/16 v3, 0x46

    const/high16 v4, 0x428c0000    # 70.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/VoIPActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02009a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 594
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;

    const/16 v3, 0x4e

    const/high16 v4, 0x429c0000    # 78.0f

    const/16 v5, 0x51

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x42880000    # 68.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 596
    new-instance v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 597
    .local v14, "cancelBtn":Landroid/widget/ImageView;
    new-instance v15, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    invoke-direct {v15}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;-><init>()V

    .line 598
    .local v15, "cancelBtnBg":Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;
    const/4 v3, -0x1

    invoke-virtual {v15, v3}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;->setColor(I)V

    .line 599
    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 600
    const v3, 0x7f020098

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 601
    const/high16 v3, -0x77000000

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 602
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 603
    const/16 v3, 0x8

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 604
    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/ui/VoIPActivity;->cancelBtn:Landroid/view/View;

    const/16 v3, 0x4e

    const/high16 v4, 0x429c0000    # 78.0f

    const/16 v5, 0x53

    const/high16 v6, 0x42500000    # 52.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x42880000    # 68.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 607
    new-instance v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    .line 608
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 609
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 610
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 611
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 612
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v7, 0x41600000    # 14.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v3, v4, v5, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 613
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_6
    const/4 v3, 0x4

    move/from16 v0, v25

    if-ge v0, v3, :cond_7

    .line 614
    new-instance v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 615
    .local v21, "emoji":Landroid/widget/ImageView;
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 616
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const/16 v3, 0x16

    const/16 v4, 0x16

    if-nez v25, :cond_6

    const/4 v5, 0x0

    :goto_7
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v9, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->keyEmojiViews:[Landroid/widget/ImageView;

    aput-object v21, v3, v25

    .line 613
    add-int/lit8 v25, v25, 0x1

    goto :goto_6

    .end local v10    # "acceptBtn":Landroid/widget/ImageView;
    .end local v11    # "acceptBtnBg":Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;
    .end local v12    # "acceptSwipe":Lorg/telegram/ui/Components/voip/CallSwipeView;
    .end local v14    # "cancelBtn":Landroid/widget/ImageView;
    .end local v15    # "cancelBtnBg":Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;
    .end local v16    # "chat":Landroid/widget/ImageView;
    .end local v17    # "chatIcon":Landroid/graphics/drawable/Drawable;
    .end local v19    # "declineBtn":Landroid/widget/ImageView;
    .end local v20    # "declineSwipe":Lorg/telegram/ui/Components/voip/CallSwipeView;
    .end local v21    # "emoji":Landroid/widget/ImageView;
    .end local v22    # "end":Landroid/widget/FrameLayout;
    .end local v23    # "endBtnBg":Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;
    .end local v24    # "endInner":Landroid/widget/ImageView;
    .end local v25    # "i":I
    .end local v27    # "matrix":Landroid/graphics/Matrix;
    .end local v28    # "mic":Lorg/telegram/ui/Components/voip/CheckableImageView;
    .end local v29    # "micIcon":Landroid/graphics/drawable/Drawable;
    .end local v30    # "name":Landroid/widget/TextView;
    .end local v32    # "rejectBtnBg":Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;
    .end local v33    # "speaker":Lorg/telegram/ui/Components/voip/CheckableImageView;
    .end local v34    # "speakerIcon":Landroid/graphics/drawable/Drawable;
    .end local v35    # "state":Landroid/widget/TextView;
    .end local v36    # "swipesWrap":Landroid/widget/LinearLayout;
    .restart local v26    # "logo":Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object/from16 v3, v26

    .line 483
    goto/16 :goto_0

    :cond_1
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 485
    .end local v26    # "logo":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v3, 0x3

    goto/16 :goto_2

    .line 495
    .restart local v30    # "name":Landroid/widget/TextView;
    :cond_3
    const/4 v3, 0x3

    goto/16 :goto_3

    .line 507
    .restart local v35    # "state":Landroid/widget/TextView;
    :cond_4
    const/4 v3, 0x3

    goto/16 :goto_4

    .line 519
    :cond_5
    const/4 v3, 0x3

    goto/16 :goto_5

    .line 616
    .restart local v10    # "acceptBtn":Landroid/widget/ImageView;
    .restart local v11    # "acceptBtnBg":Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;
    .restart local v12    # "acceptSwipe":Lorg/telegram/ui/Components/voip/CallSwipeView;
    .restart local v14    # "cancelBtn":Landroid/widget/ImageView;
    .restart local v15    # "cancelBtnBg":Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;
    .restart local v16    # "chat":Landroid/widget/ImageView;
    .restart local v17    # "chatIcon":Landroid/graphics/drawable/Drawable;
    .restart local v19    # "declineBtn":Landroid/widget/ImageView;
    .restart local v20    # "declineSwipe":Lorg/telegram/ui/Components/voip/CallSwipeView;
    .restart local v21    # "emoji":Landroid/widget/ImageView;
    .restart local v22    # "end":Landroid/widget/FrameLayout;
    .restart local v23    # "endBtnBg":Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;
    .restart local v24    # "endInner":Landroid/widget/ImageView;
    .restart local v25    # "i":I
    .restart local v27    # "matrix":Landroid/graphics/Matrix;
    .restart local v28    # "mic":Lorg/telegram/ui/Components/voip/CheckableImageView;
    .restart local v29    # "micIcon":Landroid/graphics/drawable/Drawable;
    .restart local v32    # "rejectBtnBg":Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;
    .restart local v33    # "speaker":Lorg/telegram/ui/Components/voip/CheckableImageView;
    .restart local v34    # "speakerIcon":Landroid/graphics/drawable/Drawable;
    .restart local v36    # "swipesWrap":Landroid/widget/LinearLayout;
    :cond_6
    const/high16 v5, 0x40800000    # 4.0f

    goto :goto_7

    .line 619
    .end local v21    # "emoji":Landroid/widget/ImageView;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    new-instance v4, Lorg/telegram/ui/VoIPActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/VoIPActivity$11;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v7, 0x35

    invoke-static {v4, v5, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 635
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    new-instance v4, Lorg/telegram/ui/VoIPActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/VoIPActivity$12;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 657
    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    .line 658
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    const/4 v4, 0x1

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 659
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 660
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 661
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    move-object/from16 v37, v0

    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x11

    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v7, 0x42000000    # 32.0f

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 664
    new-instance v3, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    .line 665
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const v5, -0xdcccccd

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 666
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "chat_gifSaveHintText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 667
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 668
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v3, v4, v5, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 669
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 670
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const/high16 v4, 0x43960000    # 300.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 671
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    const/4 v3, -0x2

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x35

    const/4 v6, 0x0

    const/high16 v7, 0x42280000    # 42.0f

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 674
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getAlpha()I

    move-result v6

    .line 675
    .local v6, "ellMaxAlpha":I
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/VoIPActivity;->ellAnimator:Landroid/animation/AnimatorSet;

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/VoIPActivity;->ellAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v37, v0

    const/4 v3, 0x6

    new-array v0, v3, [Landroid/animation/Animator;

    move-object/from16 v38, v0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x12c

    move-object/from16 v3, p0

    .line 677
    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/VoIPActivity;->createAlphaAnimator(Ljava/lang/Object;IIII)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v38, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v4, 0x1

    aget-object v4, v3, v4

    const/4 v5, 0x0

    const/16 v7, 0x96

    const/16 v8, 0x12c

    move-object/from16 v3, p0

    .line 678
    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/VoIPActivity;->createAlphaAnimator(Ljava/lang/Object;IIII)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v38, v9

    const/4 v9, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const/4 v5, 0x0

    const/16 v7, 0x12c

    const/16 v8, 0x12c

    move-object/from16 v3, p0

    .line 679
    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/VoIPActivity;->createAlphaAnimator(Ljava/lang/Object;IIII)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v38, v9

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v7, 0x0

    const/16 v8, 0x3e8

    const/16 v9, 0x190

    move-object/from16 v4, p0

    .line 680
    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/VoIPActivity;->createAlphaAnimator(Ljava/lang/Object;IIII)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v38, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v5, 0x1

    aget-object v5, v4, v5

    const/4 v7, 0x0

    const/16 v8, 0x3e8

    const/16 v9, 0x190

    move-object/from16 v4, p0

    .line 681
    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/VoIPActivity;->createAlphaAnimator(Ljava/lang/Object;IIII)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v38, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v5, 0x2

    aget-object v5, v4, v5

    const/4 v7, 0x0

    const/16 v8, 0x3e8

    const/16 v9, 0x190

    move-object/from16 v4, p0

    .line 682
    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/VoIPActivity;->createAlphaAnimator(Ljava/lang/Object;IIII)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v38, v3

    .line 676
    invoke-virtual/range {v37 .. v38}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 684
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VoIPActivity;->ellAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/VoIPActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/VoIPActivity$13;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 699
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 700
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/VoIPActivity;->content:Landroid/widget/FrameLayout;

    .line 702
    return-object v18
.end method

.method private getFormattedDebugString()Ljava/lang/CharSequence;
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 802
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/voip/VoIPService;->getDebugString()Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, "in":Ljava/lang/String;
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 805
    .local v4, "ss":Landroid/text/SpannableString;
    const/4 v3, 0x0

    .line 807
    .local v3, "offset":I
    :cond_0
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v9, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 808
    .local v2, "lineEnd":I
    if-ne v2, v7, :cond_1

    .line 809
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 810
    :cond_1
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 811
    .local v1, "line":Ljava/lang/String;
    const-string/jumbo v5, "IN_USE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 812
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const v6, -0xff0100

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4, v5, v3, v2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 818
    :cond_2
    :goto_0
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v9, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 820
    return-object v4

    .line 814
    :cond_3
    const-string/jumbo v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 815
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const v6, -0x55000001

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v6, 0x3a

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5, v3, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private hideRetry()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1031
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->retryAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 1032
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->retryAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1033
    :cond_0
    iput-boolean v7, p0, Lorg/telegram/ui/VoIPActivity;->retrying:Z

    .line 1034
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setVisibility(I)V

    .line 1035
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setVisibility(I)V

    .line 1036
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1038
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 1039
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->endBtnBg:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    const-string/jumbo v3, "color"

    new-array v4, v6, [I

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1044
    .local v0, "colorAnim":Landroid/animation/ObjectAnimator;
    :goto_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1045
    .local v1, "set":Landroid/animation/AnimatorSet;
    const/4 v2, 0x7

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v7

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->endBtnIcon:Landroid/view/View;

    const-string/jumbo v4, "rotation"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    .line 1047
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;

    const-string/jumbo v4, "translationX"

    new-array v5, v8, [F

    aput v10, v5, v7

    .line 1048
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->cancelBtn:Landroid/view/View;

    const-string/jumbo v5, "alpha"

    new-array v6, v8, [F

    aput v10, v6, v7

    .line 1049
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v5, "alpha"

    new-array v6, v8, [F

    aput v9, v6, v7

    .line 1050
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v5, "alpha"

    new-array v6, v8, [F

    aput v9, v6, v7

    .line 1051
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    const-string/jumbo v5, "alpha"

    new-array v6, v8, [F

    aput v9, v6, v7

    .line 1052
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1045
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1054
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1055
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1056
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1057
    new-instance v2, Lorg/telegram/ui/VoIPActivity$21;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$21;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1065
    iput-object v1, p0, Lorg/telegram/ui/VoIPActivity;->retryAnim:Landroid/animation/AnimatorSet;

    .line 1066
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1067
    return-void

    .line 1041
    .end local v0    # "colorAnim":Landroid/animation/ObjectAnimator;
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->endBtnBg:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    const-string/jumbo v3, "color"

    new-array v4, v6, [I

    fill-array-data v4, :array_2

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1042
    .restart local v0    # "colorAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto/16 :goto_0

    .line 1039
    nop

    :array_0
    .array-data 4
        -0xba43b3
        -0x19e1bc
    .end array-data

    .line 1045
    :array_1
    .array-data 4
        -0x3cf90000    # -135.0f
        0x0
    .end array-data

    .line 1041
    :array_2
    .array-data 4
        -0xba43b3
        -0x19e1bc
    .end array-data
.end method

.method private setEmojiExpanded(Z)V
    .locals 13
    .param p1, "expanded"    # Z

    .prologue
    .line 1334
    iget-boolean v6, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpanded:Z

    if-ne v6, p1, :cond_0

    .line 1389
    :goto_0
    return-void

    .line 1336
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpanded:Z

    .line 1337
    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->emojiAnimator:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_1

    .line 1338
    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->emojiAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1339
    :cond_1
    if-eqz p1, :cond_2

    .line 1340
    const/4 v6, 0x2

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    .local v1, "loc":[I
    const/4 v6, 0x2

    new-array v2, v6, [I

    fill-array-data v2, :array_1

    .line 1341
    .local v2, "loc2":[I
    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    .line 1342
    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 1343
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1344
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1345
    const/4 v6, 0x1

    aget v6, v2, v6

    const/4 v7, 0x1

    aget v7, v1, v7

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    const/high16 v7, 0x42000000    # 32.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    sub-int v3, v6, v7

    .line 1346
    .local v3, "offsetY":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40200000    # 2.5f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    aget v7, v1, v7

    sub-int v0, v6, v7

    .line 1347
    .local v0, "firstOffsetX":I
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1348
    .local v5, "set":Landroid/animation/AnimatorSet;
    const/4 v6, 0x7

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v9, "translationY"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    int-to-float v12, v3

    aput v12, v10, v11

    .line 1349
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v9, "translationX"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    int-to-float v12, v0

    aput v12, v10, v11

    .line 1350
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v9, "scaleX"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x40200000    # 2.5f

    aput v12, v10, v11

    .line 1351
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v9, "scaleY"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x40200000    # 2.5f

    aput v12, v10, v11

    .line 1352
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    const-string/jumbo v9, "alpha"

    const/4 v10, 0x3

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    .line 1353
    invoke-virtual {v12}, Landroid/widget/ImageView;->getAlpha()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    const/4 v11, 0x2

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    const-string/jumbo v9, "alpha"

    const/4 v10, 0x3

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    .line 1354
    invoke-virtual {v12}, Landroid/widget/ImageView;->getAlpha()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getAlpha()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x2

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    const-string/jumbo v9, "alpha"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    .line 1355
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1348
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1357
    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1358
    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1359
    iput-object v5, p0, Lorg/telegram/ui/VoIPActivity;->emojiAnimator:Landroid/animation/AnimatorSet;

    .line 1360
    new-instance v6, Lorg/telegram/ui/VoIPActivity$26;

    invoke-direct {v6, p0}, Lorg/telegram/ui/VoIPActivity$26;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1366
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1368
    .end local v0    # "firstOffsetX":I
    .end local v1    # "loc":[I
    .end local v2    # "loc2":[I
    .end local v3    # "offsetY":I
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v5    # "set":Landroid/animation/AnimatorSet;
    :cond_2
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1369
    .restart local v5    # "set":Landroid/animation/AnimatorSet;
    const/4 v6, 0x7

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v9, "translationX"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 1370
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v9, "translationY"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 1371
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v9, "scaleX"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    .line 1372
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v9, "scaleY"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    .line 1373
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    const-string/jumbo v9, "alpha"

    const/4 v10, 0x3

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    .line 1374
    invoke-virtual {v12}, Landroid/widget/ImageView;->getAlpha()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getAlpha()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    const-string/jumbo v9, "alpha"

    const/4 v10, 0x3

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    .line 1375
    invoke-virtual {v12}, Landroid/widget/ImageView;->getAlpha()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    const-string/jumbo v9, "alpha"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 1376
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1369
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1378
    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1379
    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1380
    iput-object v5, p0, Lorg/telegram/ui/VoIPActivity;->emojiAnimator:Landroid/animation/AnimatorSet;

    .line 1381
    new-instance v6, Lorg/telegram/ui/VoIPActivity$27;

    invoke-direct {v6, p0}, Lorg/telegram/ui/VoIPActivity$27;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1387
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1340
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private setEmojiTooltipVisible(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1316
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPActivity;->emojiTooltipVisible:Z

    .line 1317
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->tooltipAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 1318
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->tooltipAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 1319
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1320
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "alpha"

    const/4 v1, 0x1

    new-array v4, v1, [F

    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    aput v1, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1321
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1322
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1323
    new-instance v1, Lorg/telegram/ui/VoIPActivity$25;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPActivity$25;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1329
    iput-object v0, p0, Lorg/telegram/ui/VoIPActivity;->tooltipAnim:Landroid/animation/Animator;

    .line 1330
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1331
    return-void

    .line 1320
    .end local v0    # "oa":Landroid/animation/ObjectAnimator;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setStateTextAnimated(Ljava/lang/String;Z)V
    .locals 12
    .param p1, "_newText"    # Ljava/lang/String;
    .param p2, "ellipsis"    # Z

    .prologue
    .line 1243
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->lastStateText:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1301
    :goto_0
    return-void

    .line 1245
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->lastStateText:Ljava/lang/String;

    .line 1246
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->textChangingAnim:Landroid/animation/Animator;

    if-eqz v5, :cond_1

    .line 1247
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->textChangingAnim:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    .line 1249
    :cond_1
    if-eqz p2, :cond_4

    .line 1250
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->ellAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1251
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->ellAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 1252
    :cond_2
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1253
    .local v4, "ssb":Landroid/text/SpannableStringBuilder;
    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    array-length v7, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_3

    aget-object v2, v6, v5

    .line 1254
    .local v2, "s":Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;->setAlpha(I)V

    .line 1253
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1255
    .end local v2    # "s":Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;
    :cond_3
    new-instance v0, Landroid/text/SpannableString;

    const-string/jumbo v5, "..."

    invoke-direct {v0, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1256
    .local v0, "ell":Landroid/text/SpannableString;
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1257
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1258
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1259
    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1260
    move-object v1, v4

    .line 1266
    .end local v0    # "ell":Landroid/text/SpannableString;
    .end local v4    # "ssb":Landroid/text/SpannableStringBuilder;
    .local v1, "newText":Ljava/lang/CharSequence;
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1267
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1268
    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    :goto_3
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setPivotX(F)V

    .line 1269
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setPivotY(F)V

    .line 1270
    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    :goto_4
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setPivotX(F)V

    .line 1271
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setPivotY(F)V

    .line 1272
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    iput-object v5, p0, Lorg/telegram/ui/VoIPActivity;->durationText:Landroid/widget/TextView;

    .line 1273
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1274
    .local v3, "set":Landroid/animation/AnimatorSet;
    const/16 v5, 0x8

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    const-string/jumbo v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    .line 1275
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    const-string/jumbo v8, "translationY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    .line 1276
    invoke-virtual {v11}, Landroid/widget/TextView;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    aput v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    const-string/jumbo v8, "scaleX"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_1

    .line 1277
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    const-string/jumbo v8, "scaleY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_2

    .line 1278
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    const-string/jumbo v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_3

    .line 1279
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    const-string/jumbo v8, "translationY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    .line 1280
    invoke-virtual {v11}, Landroid/widget/TextView;->getHeight()I

    move-result v11

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    iget-object v7, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    const-string/jumbo v8, "scaleX"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_4

    .line 1281
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget-object v7, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    const-string/jumbo v8, "scaleY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_5

    .line 1282
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1274
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1284
    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1285
    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1286
    new-instance v5, Lorg/telegram/ui/VoIPActivity$24;

    invoke-direct {v5, p0}, Lorg/telegram/ui/VoIPActivity$24;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1299
    iput-object v3, p0, Lorg/telegram/ui/VoIPActivity;->textChangingAnim:Landroid/animation/Animator;

    .line 1300
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1262
    .end local v1    # "newText":Ljava/lang/CharSequence;
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->ellAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1263
    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->ellAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1264
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "newText":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 1268
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 1270
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 1274
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1276
    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    .line 1277
    :array_2
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    .line 1278
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1280
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
    .end array-data

    .line 1281
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
    .end array-data
.end method

.method private showDebugAlert()V
    .locals 15

    .prologue
    .line 824
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 879
    :goto_0
    return-void

    .line 826
    :cond_0
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 827
    .local v8, "debugOverlay":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 828
    const/high16 v0, -0x34000000    # -3.3554432E7f

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 829
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    .line 830
    .local v10, "pad":I
    mul-int/lit8 v0, v10, 0x2

    mul-int/lit8 v1, v10, 0x2

    invoke-virtual {v8, v10, v0, v10, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 832
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 833
    .local v13, "title":Landroid/widget/TextView;
    const/4 v0, -0x1

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 834
    const/4 v0, 0x1

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v13, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 835
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 836
    const/16 v0, 0x11

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "libtgvoip v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPController;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    const/4 v0, -0x1

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 840
    new-instance v12, Landroid/widget/ScrollView;

    invoke-direct {v12, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 841
    .local v12, "scroll":Landroid/widget/ScrollView;
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 842
    .local v9, "debugText":Landroid/widget/TextView;
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 843
    const/4 v0, 0x1

    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v9, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 844
    const/high16 v0, 0x43af0000    # 350.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 845
    const/4 v0, -0x1

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 846
    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->getFormattedDebugString()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    invoke-virtual {v12, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 848
    const/4 v0, -0x1

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 850
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 851
    .local v7, "closeBtn":Landroid/widget/TextView;
    const/4 v0, -0x1

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 852
    const/high16 v0, -0x1000000

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 853
    invoke-virtual {v7, v10, v10, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 854
    const/4 v0, 0x1

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v7, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 855
    const-string/jumbo v0, "Close"

    const v1, 0x7f07019e

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    const/4 v0, -0x2

    const/4 v1, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 858
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lorg/telegram/ui/VoIPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    .line 859
    .local v14, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-interface {v14, v8, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 861
    new-instance v0, Lorg/telegram/ui/VoIPActivity$15;

    invoke-direct {v0, p0, v14, v8}, Lorg/telegram/ui/VoIPActivity$15;-><init>(Lorg/telegram/ui/VoIPActivity;Landroid/view/WindowManager;Landroid/widget/LinearLayout;)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 868
    new-instance v11, Lorg/telegram/ui/VoIPActivity$16;

    invoke-direct {v11, p0, v9, v8}, Lorg/telegram/ui/VoIPActivity$16;-><init>(Lorg/telegram/ui/VoIPActivity;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    .line 878
    .local v11, "r":Ljava/lang/Runnable;
    const-wide/16 v0, 0x1f4

    invoke-virtual {v8, v11, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 1199
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "VoipFailed"

    const v3, 0x7f070753

    .line 1200
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 1201
    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "OK"

    const v3, 0x7f0704f5

    .line 1202
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 1203
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 1204
    .local v0, "dlg":Lorg/telegram/ui/ActionBar/AlertDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1205
    new-instance v1, Lorg/telegram/ui/VoIPActivity$23;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPActivity$23;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1211
    return-void
.end method

.method private showRetry()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 990
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->retryAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 991
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->retryAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 992
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 993
    iput-boolean v9, p0, Lorg/telegram/ui/VoIPActivity;->retrying:Z

    .line 994
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->cancelBtn:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 995
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->cancelBtn:Landroid/view/View;

    invoke-virtual {v2, v11}, Landroid/view/View;->setAlpha(F)V

    .line 996
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 998
    .local v1, "set":Landroid/animation/AnimatorSet;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 999
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->endBtnBg:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    const-string/jumbo v3, "color"

    new-array v4, v10, [I

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1004
    .local v0, "colorAnim":Landroid/animation/ObjectAnimator;
    :goto_0
    const/4 v2, 0x7

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->cancelBtn:Landroid/view/View;

    const-string/jumbo v4, "alpha"

    new-array v5, v10, [F

    fill-array-data v5, :array_1

    .line 1005
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;

    const-string/jumbo v4, "translationX"

    new-array v5, v10, [F

    aput v11, v5, v8

    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->content:Landroid/widget/FrameLayout;

    .line 1006
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    const/high16 v7, 0x42500000    # 52.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    aput v6, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object v0, v2, v10

    const/4 v3, 0x3

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->endBtnIcon:Landroid/view/View;

    const-string/jumbo v5, "rotation"

    new-array v6, v10, [F

    fill-array-data v6, :array_2

    .line 1008
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    aput v11, v6, v8

    .line 1009
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    aput v11, v6, v8

    .line 1010
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    aput v11, v6, v8

    .line 1011
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1004
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1013
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1014
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1015
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1016
    new-instance v2, Lorg/telegram/ui/VoIPActivity$20;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$20;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1026
    iput-object v1, p0, Lorg/telegram/ui/VoIPActivity;->retryAnim:Landroid/animation/AnimatorSet;

    .line 1027
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1028
    return-void

    .line 1001
    .end local v0    # "colorAnim":Landroid/animation/ObjectAnimator;
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->endBtnBg:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    const-string/jumbo v3, "color"

    new-array v4, v10, [I

    fill-array-data v4, :array_3

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1002
    .restart local v0    # "colorAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto/16 :goto_0

    .line 999
    nop

    :array_0
    .array-data 4
        -0x19e1bc
        -0xba43b3
    .end array-data

    .line 1004
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1006
    :array_2
    .array-data 4
        0x0
        -0x3cf90000    # -135.0f
    .end array-data

    .line 1001
    :array_3
    .array-data 4
        -0x19e1bc
        -0xba43b3
    .end array-data
.end method

.method private startUpdatingCallDuration()V
    .locals 1

    .prologue
    .line 882
    new-instance v0, Lorg/telegram/ui/VoIPActivity$17;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPActivity$17;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    .line 895
    .local v0, "r":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 896
    return-void
.end method

.method private updateBlurredPhotos(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "src"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1392
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/ui/VoIPActivity$28;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/VoIPActivity$28;-><init>(Lorg/telegram/ui/VoIPActivity;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1420
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1421
    return-void
.end method

.method private updateKeyView()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/high16 v10, 0x41b00000    # 22.0f

    const/4 v9, 0x0

    .line 780
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v7

    if-nez v7, :cond_1

    .line 799
    :cond_0
    return-void

    .line 782
    :cond_1
    new-instance v5, Lorg/telegram/ui/Components/IdenticonDrawable;

    invoke-direct {v5}, Lorg/telegram/ui/Components/IdenticonDrawable;-><init>()V

    .line 783
    .local v5, "img":Lorg/telegram/ui/Components/IdenticonDrawable;
    new-array v7, v11, [I

    fill-array-data v7, :array_0

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/IdenticonDrawable;->setColors([I)V

    .line 784
    new-instance v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;-><init>()V

    .line 786
    .local v3, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 787
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/voip/VoIPService;->getEncryptionKey()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 788
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/voip/VoIPService;->getGA()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 789
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iput-object v7, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    .end local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    :goto_0
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v8, v8

    invoke-static {v7, v9, v8}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v6

    .line 792
    .local v6, "sha256":[B
    invoke-static {v6}, Lorg/telegram/messenger/voip/EncryptionKeyEmojifier;->emojifyForCall([B)[Ljava/lang/String;

    move-result-object v2

    .line 794
    .local v2, "emoji":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v11, :cond_0

    .line 795
    aget-object v7, v2, v4

    invoke-static {v7}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v1

    .line 796
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v1, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 797
    iget-object v7, p0, Lorg/telegram/ui/VoIPActivity;->keyEmojiViews:[Landroid/widget/ImageView;

    aget-object v7, v7, v4

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 794
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 790
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "emoji":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "sha256":[B
    :catch_0
    move-exception v7

    goto :goto_0

    .line 783
    nop

    :array_0
    .array-data 4
        0xffffff
        -0x1
        -0x66000001
        0x33ffffff
    .end array-data
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1305
    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    if-ne p1, v1, :cond_0

    .line 1306
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->keyEmojiViews:[Landroid/widget/ImageView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 1307
    .local v0, "iv":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 1306
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1310
    .end local v0    # "iv":Landroid/widget/ImageView;
    :cond_0
    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    if-ne p1, v1, :cond_1

    .line 1311
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->finish()V

    .line 1313
    :cond_1
    return-void
.end method

.method public onAudioSettingsChanged()V
    .locals 6

    .prologue
    const v5, 0x7f020117

    const v4, 0x7f0200d4

    const/4 v3, 0x0

    .line 1215
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1240
    :goto_0
    return-void

    .line 1217
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setChecked(Z)V

    .line 1218
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothHeadsetConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1219
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setVisibility(I)V

    goto :goto_0

    .line 1221
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setVisibility(I)V

    .line 1222
    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/VoIPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1223
    .local v0, "am":Landroid/media/AudioManager;
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1224
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setImageResource(I)V

    .line 1225
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setChecked(Z)V

    goto :goto_0

    .line 1226
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothHeadsetConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1227
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1228
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setImageResource(I)V

    .line 1234
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setChecked(Z)V

    goto :goto_0

    .line 1229
    :cond_3
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1230
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setImageResource(I)V

    goto :goto_1

    .line 1232
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const v2, 0x7f0200fc

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setImageResource(I)V

    goto :goto_1

    .line 1236
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setImageResource(I)V

    .line 1237
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 726
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpanded:Z

    if-eqz v0, :cond_1

    .line 727
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/VoIPActivity;->setEmojiExpanded(Z)V

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->isIncomingWaiting:Z

    if-nez v0, :cond_0

    .line 731
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f0700f1

    const/high16 v7, -0x1000000

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 137
    invoke-virtual {p0, v5}, Lorg/telegram/ui/VoIPActivity;->requestWindowFeature(I)Z

    .line 138
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 139
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->finish()V

    .line 443
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 147
    invoke-virtual {p0, v5}, Lorg/telegram/ui/VoIPActivity;->setRequestedOrientation(I)V

    .line 151
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->createContentView()Landroid/view/View;

    move-result-object v0

    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lorg/telegram/ui/VoIPActivity;->setContentView(Landroid/view/View;)V

    .line 153
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 154
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 156
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 160
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 161
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_3

    .line 162
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->photoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/VoIPActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$1;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 171
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->photoView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 177
    :goto_1
    invoke-virtual {p0, v6}, Lorg/telegram/ui/VoIPActivity;->setVolumeControlStream(I)V

    .line 179
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->nameText:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/VoIPActivity$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$2;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;

    new-instance v2, Lorg/telegram/ui/VoIPActivity$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$3;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    new-instance v2, Lorg/telegram/ui/VoIPActivity$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$4;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    new-instance v2, Lorg/telegram/ui/VoIPActivity$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$5;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/VoIPActivity$6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$6;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/VoIPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setChecked(Z)V

    .line 302
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setChecked(Z)V

    .line 304
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->onAudioSettingsChanged()V

    .line 306
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->nameText:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/telegram/messenger/voip/VoIPService;->registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    .line 310
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->acceptSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

    new-instance v2, Lorg/telegram/ui/VoIPActivity$7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$7;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/CallSwipeView;->setListener(Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;)V

    .line 374
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->declineSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

    new-instance v2, Lorg/telegram/ui/VoIPActivity$8;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$8;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/voip/CallSwipeView;->setListener(Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;)V

    .line 431
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->cancelBtn:Landroid/view/View;

    new-instance v2, Lorg/telegram/ui/VoIPActivity$9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$9;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 439
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 440
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 441
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "CallEmojiKeyTooltip"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v8, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    const-string/jumbo v2, "CallEmojiKeyTooltip"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v8, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 173
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->photoView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setVisibility(I)V

    .line 174
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    nop

    :array_0
    .array-data 4
        -0xe4cab2
        -0xdaa483
    .end array-data
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 716
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 717
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 718
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 719
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/VoIPService;->unregisterStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    .line 721
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 722
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 900
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->isIncomingWaiting:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    .line 901
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 902
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->stopRinging()V

    .line 905
    :goto_0
    const/4 v0, 0x1

    .line 907
    :goto_1
    return v0

    .line 904
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->finish()V

    goto :goto_0

    .line 907
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 744
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 745
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->retrying:Z

    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->finish()V

    .line 747
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 748
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->onUIForegroundStateChanged(Z)V

    .line 749
    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 754
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 755
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 756
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->finish()V

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    array-length v0, p3

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_2

    .line 760
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCall()V

    .line 761
    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->callAccepted()V

    goto :goto_0

    .line 763
    :cond_2
    const-string/jumbo v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v0}, Lorg/telegram/ui/VoIPActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 764
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall()V

    .line 765
    new-instance v0, Lorg/telegram/ui/VoIPActivity$14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPActivity$14;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/voip/VoIPHelper;->permissionDenied(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 773
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->acceptSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->reset()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 737
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 738
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 739
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->onUIForegroundStateChanged(Z)V

    .line 740
    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1071
    iget v0, p0, Lorg/telegram/ui/VoIPActivity;->callState:I

    .line 1072
    .local v0, "prevState":I
    iput p1, p0, Lorg/telegram/ui/VoIPActivity;->callState:I

    .line 1073
    new-instance v1, Lorg/telegram/ui/VoIPActivity$22;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/ui/VoIPActivity$22;-><init>(Lorg/telegram/ui/VoIPActivity;II)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/VoIPActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1196
    return-void
.end method
