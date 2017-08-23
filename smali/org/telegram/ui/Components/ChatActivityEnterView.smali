.class public Lorg/telegram/ui/Components/ChatActivityEnterView;
.super Landroid/widget/FrameLayout;
.source "ChatActivityEnterView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;
.implements Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;,
        Lorg/telegram/ui/Components/ChatActivityEnterView$ScrimDrawable;,
        Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;,
        Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;,
        Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;,
        Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;
    }
.end annotation


# instance fields
.field private allowGifs:Z

.field private allowShowTopView:Z

.field private allowStickers:Z

.field private attachButton:Landroid/widget/ImageView;

.field private attachLayout:Landroid/widget/LinearLayout;

.field private audioSendButton:Landroid/widget/ImageView;

.field private audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

.field private audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

.field private audioToSendPath:Ljava/lang/String;

.field private audioVideoButtonAnimation:Landroid/animation/AnimatorSet;

.field private audioVideoButtonContainer:Landroid/widget/FrameLayout;

.field private botButton:Landroid/widget/ImageView;

.field private botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

.field private botCount:I

.field private botKeyboardPopup:Landroid/widget/PopupWindow;

.field private botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

.field private botMessageObject:Lorg/telegram/messenger/MessageObject;

.field private botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

.field private calledRecordRunnable:Z

.field private cameraDrawable:Landroid/graphics/drawable/Drawable;

.field private canWriteToChannel:Z

.field private cancelBotButton:Landroid/widget/ImageView;

.field private currentPopupContentType:I

.field private currentTopViewAnimation:Landroid/animation/AnimatorSet;

.field private delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

.field private dialog_id:J

.field private distCanMove:F

.field private doneButtonAnimation:Landroid/animation/AnimatorSet;

.field private doneButtonContainer:Landroid/widget/FrameLayout;

.field private doneButtonImage:Landroid/widget/ImageView;

.field private doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

.field private dotPaint:Landroid/graphics/Paint;

.field private editingCaption:Z

.field private editingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private editingMessageReqId:I

.field private emojiButton:Landroid/widget/ImageView;

.field private emojiPadding:I

.field private emojiView:Lorg/telegram/ui/Components/EmojiView;

.field private expandStickersButton:Landroid/widget/ImageView;

.field private forceShowSendButton:Z

.field private gifsTabOpen:Z

.field private hasBotCommands:Z

.field private hasRecordVideo:Z

.field private hideBotKeyboard:Z

.field private ignoreTextChange:Z

.field private innerTextChange:I

.field private isPaused:Z

.field private keyboardHeight:I

.field private keyboardHeightLand:I

.field private keyboardVisible:Z

.field private lastSizeChangeValue1:I

.field private lastSizeChangeValue2:Z

.field private lastTimeString:Ljava/lang/String;

.field private lastTypingSendTime:J

.field private lastTypingTimeSend:J

.field private lockArrowDrawable:Landroid/graphics/drawable/Drawable;

.field private lockBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private lockDrawable:Landroid/graphics/drawable/Drawable;

.field private lockShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private lockTopDrawable:Landroid/graphics/drawable/Drawable;

.field private messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

.field private messageWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

.field private messageWebPageSearch:Z

.field private micDrawable:Landroid/graphics/drawable/Drawable;

.field private needShowTopView:Z

.field private notifyButton:Landroid/widget/ImageView;

.field private openKeyboardRunnable:Ljava/lang/Runnable;

.field private paint:Landroid/graphics/Paint;

.field private paintRecord:Landroid/graphics/Paint;

.field private parentActivity:Landroid/app/Activity;

.field private parentFragment:Lorg/telegram/ui/ChatActivity;

.field private pauseDrawable:Landroid/graphics/drawable/Drawable;

.field private pendingLocationButton:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

.field private pendingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private playDrawable:Landroid/graphics/drawable/Drawable;

.field private progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

.field private recordAudioVideoRunnable:Ljava/lang/Runnable;

.field private recordAudioVideoRunnableStarted:Z

.field private recordCancelImage:Landroid/widget/ImageView;

.field private recordCancelText:Landroid/widget/TextView;

.field private recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

.field private recordDeleteImageView:Landroid/widget/ImageView;

.field private recordDot:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;

.field private recordInterfaceState:I

.field private recordPanel:Landroid/widget/FrameLayout;

.field private recordSendText:Landroid/widget/TextView;

.field private recordTimeContainer:Landroid/widget/LinearLayout;

.field private recordTimeText:Landroid/widget/TextView;

.field private recordedAudioBackground:Landroid/view/View;

.field private recordedAudioPanel:Landroid/widget/FrameLayout;

.field private recordedAudioPlayButton:Landroid/widget/ImageView;

.field private recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

.field private recordedAudioTimeTextView:Landroid/widget/TextView;

.field private recordingAudioVideo:Z

.field private rect:Landroid/graphics/RectF;

.field private redDotPaint:Landroid/graphics/Paint;

.field private replyingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private roundedTranslationYProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private runningAnimation:Landroid/animation/AnimatorSet;

.field private runningAnimation2:Landroid/animation/AnimatorSet;

.field private runningAnimationAudio:Landroid/animation/AnimatorSet;

.field private runningAnimationType:I

.field private sendButton:Landroid/widget/ImageView;

.field private sendButtonContainer:Landroid/widget/FrameLayout;

.field private sendByEnter:Z

.field private sendDrawable:Landroid/graphics/drawable/Drawable;

.field private showKeyboardOnResume:Z

.field private silent:Z

.field private sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private slideText:Landroid/widget/LinearLayout;

.field private startedDraggingX:F

.field private stickersArrow:Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;

.field private stickersDragging:Z

.field private stickersExpanded:Z

.field private stickersExpandedHeight:I

.field private stickersExpansionAnim:Landroid/animation/Animator;

.field private stickersExpansionProgress:F

.field private stickersTabOpen:Z

.field private textFieldContainer:Landroid/widget/LinearLayout;

.field private topView:Landroid/view/View;

.field private topViewShowed:Z

.field private updateExpandabilityRunnable:Ljava/lang/Runnable;

.field private videoSendButton:Landroid/widget/ImageView;

.field private videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

.field private videoToSendMessageObject:Lorg/telegram/messenger/VideoEditedInfo;

.field private waitingForKeyboardOpen:Z

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;Z)V
    .locals 18
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "parent"    # Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    .param p3, "fragment"    # Lorg/telegram/ui/ChatActivity;
    .param p4, "isChat"    # Z

    .prologue
    .line 694
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 227
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    .line 232
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPaused:Z

    .line 255
    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->startedDraggingX:F

    .line 256
    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->distCanMove:F

    .line 273
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageWebPageSearch:Z

    .line 292
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardRunnable:Ljava/lang/Runnable;

    .line 303
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$2;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateExpandabilityRunnable:Ljava/lang/Runnable;

    .line 322
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$3;

    const-class v3, Ljava/lang/Integer;

    const-string/jumbo v4, "translationY"

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$3;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/Class;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->roundedTranslationYProperty:Landroid/util/Property;

    .line 334
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->redDotPaint:Landroid/graphics/Paint;

    .line 347
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$4;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordAudioVideoRunnable:Ljava/lang/Runnable;

    .line 452
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paint:Landroid/graphics/Paint;

    .line 453
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paintRecord:Landroid/graphics/Paint;

    .line 462
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->rect:Landroid/graphics/RectF;

    .line 696
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dotPaint:Landroid/graphics/Paint;

    .line 697
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dotPaint:Landroid/graphics/Paint;

    const-string/jumbo v3, "chat_emojiPanelNewTrending"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 698
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFocusable(Z)V

    .line 699
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFocusableInTouchMode(Z)V

    .line 700
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setWillNotDraw(Z)V

    .line 702
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->recordStarted:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 703
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->recordStartError:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 704
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 705
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->recordProgressChanged:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 706
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 707
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioDidSent:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 708
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 709
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioRouteChanged:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 710
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 711
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 712
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 713
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    .line 714
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    .line 715
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    .line 717
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->mainconfig:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 718
    .local v13, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "send_by_enter"

    const/4 v3, 0x0

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendByEnter:Z

    .line 720
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "plusconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 721
    .local v12, "plusPrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "hideBotKeyboard"

    const/4 v3, 0x0

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hideBotKeyboard:Z

    .line 723
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    new-instance v10, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 728
    .local v10, "frameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 730
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$5;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    .line 742
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$6;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 756
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v4, "chat_messagePanelIcons"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 757
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 758
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 762
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setEmojiButtonImage()V

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const/16 v2, 0x30

    const/high16 v3, 0x42400000    # 48.0f

    const/16 v4, 0x53

    const/high16 v5, 0x40400000    # 3.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$7;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 777
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$8;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    .line 822
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldHint()V

    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setImeOptions(I)V

    .line 824
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextCaption;->getInputType()I

    move-result v3

    or-int/lit16 v3, v3, 0x4000

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setInputType(I)V

    .line 825
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setSingleLine(Z)V

    .line 826
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setMaxLines(I)V

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/EditTextCaption;->setTextSize(IF)V

    .line 828
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setGravity(I)V

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v3, 0x0

    const/high16 v4, 0x41300000    # 11.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/EditTextCaption;->setPadding(IIII)V

    .line 830
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string/jumbo v3, "chat_messagePanelText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setTextColor(I)V

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string/jumbo v3, "chat_messagePanelHint"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setHintColor(I)V

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string/jumbo v3, "chat_messagePanelHint"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setHintTextColor(I)V

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    move-object/from16 v16, v0

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x50

    const/high16 v5, 0x42500000    # 52.0f

    const/4 v6, 0x0

    if-eqz p4, :cond_4

    const/high16 v7, 0x42480000    # 50.0f

    :goto_0
    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 835
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$9;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 861
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$10;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 882
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$11;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 943
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    :goto_1
    if-eqz p4, :cond_1

    .line 948
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    .line 949
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 950
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const/4 v3, -0x2

    const/16 v4, 0x30

    const/16 v5, 0x55

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 954
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    .line 955
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v4, "chat_messagePanelIcons"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 956
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    const v3, 0x7f020036

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 958
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 962
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/16 v5, 0x30

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 963
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$12;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 986
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    .line 987
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->silent:Z

    if-eqz v2, :cond_5

    const v2, 0x7f0201eb

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 988
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v4, "chat_messagePanelIcons"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 989
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 990
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->canWriteToChannel:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 994
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/16 v5, 0x30

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 995
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$13;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1022
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/ImageView;

    .line 1023
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v4, "chat_messagePanelIcons"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1024
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/ImageView;

    const v3, 0x7f0200ba

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/16 v5, 0x30

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1030
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$14;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1038
    :cond_1
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 1039
    .local v15, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "chatEditTextBGColor"

    const/4 v3, -0x1

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1040
    .local v9, "bgColor":I
    const-string/jumbo v3, "chatEditTextIconsColor"

    const/4 v2, -0x1

    if-ne v9, v2, :cond_7

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    :goto_4
    invoke-interface {v15, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 1042
    .local v11, "iColor":I
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    .line 1043
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v2, :cond_8

    const/16 v2, 0x8

    :goto_5
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1044
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_9

    .end local v9    # "bgColor":I
    :goto_6
    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/16 v5, 0x50

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1050
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordDeleteImageView:Landroid/widget/ImageView;

    .line 1051
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordDeleteImageView:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1052
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordDeleteImageView:Landroid/widget/ImageView;

    const v3, 0x7f0200be

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordDeleteImageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v4, "chat_messagePanelVoiceDelete"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordDeleteImageView:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordDeleteImageView:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$15;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1074
    new-instance v2, Lorg/telegram/ui/Components/VideoTimelineView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/VideoTimelineView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    .line 1075
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    const v3, -0xb45209

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoTimelineView;->setColor(I)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoTimelineView;->setRoundFrames(Z)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$16;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoTimelineView;->setDelegate(Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;)V

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    move-object/from16 v17, v0

    const/4 v2, -0x1

    const/high16 v3, 0x42000000    # 32.0f

    const/16 v4, 0x13

    const/high16 v5, 0x42200000    # 40.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1108
    new-instance v2, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioBackground:Landroid/view/View;

    .line 1109
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioBackground:Landroid/view/View;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const-string/jumbo v4, "chat_recordedVoiceBackground"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioBackground:Landroid/view/View;

    move-object/from16 v17, v0

    const/4 v2, -0x1

    const/high16 v3, 0x42100000    # 36.0f

    const/16 v4, 0x13

    const/high16 v5, 0x42400000    # 48.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1112
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    move-object/from16 v17, v0

    const/4 v2, -0x1

    const/high16 v3, 0x42000000    # 32.0f

    const/16 v4, 0x13

    const/high16 v5, 0x42b80000    # 92.0f

    const/4 v6, 0x0

    const/high16 v7, 0x42500000    # 52.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1115
    const v2, 0x7f02022e

    const-string/jumbo v3, "chat_recordedVoicePlayPause"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "chat_recordedVoicePlayPausePressed"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->playDrawable:Landroid/graphics/drawable/Drawable;

    .line 1116
    const v2, 0x7f02022d

    const-string/jumbo v3, "chat_recordedVoicePlayPause"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "chat_recordedVoicePlayPausePressed"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->pauseDrawable:Landroid/graphics/drawable/Drawable;

    .line 1118
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPlayButton:Landroid/widget/ImageView;

    .line 1119
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPlayButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPlayButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPlayButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v2, 0x30

    const/high16 v3, 0x42400000    # 48.0f

    const/16 v4, 0x53

    const/high16 v5, 0x42400000    # 48.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1122
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPlayButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$17;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$17;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1138
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioTimeTextView:Landroid/widget/TextView;

    .line 1139
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioTimeTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "chat_messagePanelVoiceDuration"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioTimeTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioTimeTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x41500000    # 13.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1143
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    .line 1144
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "chat_messagePanelBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/16 v5, 0x50

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1147
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$18;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$18;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1154
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    .line 1155
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x11

    const/high16 v5, 0x41f00000    # 30.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1158
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCancelImage:Landroid/widget/ImageView;

    .line 1159
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCancelImage:Landroid/widget/ImageView;

    const v3, 0x7f020245

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1160
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCancelImage:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v4, "chat_recordVoiceCancel"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCancelImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1163
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCancelText:Landroid/widget/TextView;

    .line 1164
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCancelText:Landroid/widget/TextView;

    const-string/jumbo v3, "SlideToCancel"

    const v4, 0x7f07069d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCancelText:Landroid/widget/TextView;

    const-string/jumbo v3, "chat_recordVoiceCancel"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1166
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCancelText:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCancelText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x10

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1169
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordSendText:Landroid/widget/TextView;

    .line 1170
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordSendText:Landroid/widget/TextView;

    const-string/jumbo v3, "Cancel"

    const v4, 0x7f070105

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordSendText:Landroid/widget/TextView;

    const-string/jumbo v3, "chat_fieldOverlayText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1172
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordSendText:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1173
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordSendText:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1174
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordSendText:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1175
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordSendText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordSendText:Landroid/widget/TextView;

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1177
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordSendText:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$19;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$19;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordSendText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x31

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1192
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeContainer:Landroid/widget/LinearLayout;

    .line 1193
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeContainer:Landroid/widget/LinearLayout;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeContainer:Landroid/widget/LinearLayout;

    const-string/jumbo v3, "chat_messagePanelBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeContainer:Landroid/widget/LinearLayout;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x10

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1198
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordDot:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeContainer:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordDot:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;

    move-object/from16 v17, v0

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1201
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeText:Landroid/widget/TextView;

    .line 1202
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeText:Landroid/widget/TextView;

    const-string/jumbo v3, "00:00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1203
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeText:Landroid/widget/TextView;

    const-string/jumbo v3, "chat_recordTime"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1204
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeText:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeContainer:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x10

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1207
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    .line 1208
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x50

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1210
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    .line 1211
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "chat_messagePanelBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1212
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setSoundEffectsEnabled(Z)V

    .line 1213
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/16 v4, 0x30

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1214
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$20;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$20;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1333
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    .line 1334
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1335
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v4, "chat_messagePanelIcons"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    const v3, 0x7f02016d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1337
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1338
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1340
    if-eqz p4, :cond_2

    .line 1341
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    .line 1342
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1343
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v4, "chat_messagePanelIcons"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1344
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    const v3, 0x7f0200f7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1345
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1349
    :cond_2
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    .line 1350
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setVisibility(I)V

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-object/from16 v17, v0

    const/16 v2, 0x7c

    const/high16 v3, 0x43420000    # 194.0f

    const/16 v4, 0x55

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x3df00000    # -36.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1353
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    .line 1354
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1355
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1356
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/CloseProgressDrawable2;

    invoke-direct {v3}, Lorg/telegram/ui/Components/CloseProgressDrawable2;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1357
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v4, "chat_messagePanelCancelInlineBot"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1358
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 1359
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1361
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1362
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$21;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$21;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1376
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    .line 1377
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1378
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1379
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v4, "chat_messagePanelSend"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1380
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const v3, 0x7f020103

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1381
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 1382
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1383
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1385
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1386
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$22;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$22;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1393
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    .line 1394
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1395
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;

    const-string/jumbo v4, "chat_messagePanelIcons"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersArrow:Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1396
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1397
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1398
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1399
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1400
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1401
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$23;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$23;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1410
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonContainer:Landroid/widget/FrameLayout;

    .line 1411
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1412
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonContainer:Landroid/widget/FrameLayout;

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x50

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1416
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonContainer:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$24;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$24;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1423
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    .line 1424
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1425
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    const v3, 0x7f020099

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1426
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_a

    .end local v11    # "iColor":I
    :goto_7
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v11, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1427
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    const/16 v4, 0x30

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1429
    new-instance v2, Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    .line 1430
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 1431
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1433
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "emoji"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 1434
    .local v14, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "kbd_height"

    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    .line 1435
    const-string/jumbo v2, "kbd_height_land3"

    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    .line 1437
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setRecordVideoButtonVisible(ZZ)V

    .line 1438
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    .line 1439
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkChannelRights()V

    .line 1441
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateTheme()V

    .line 1443
    :cond_3
    return-void

    .line 834
    .end local v14    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v15    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_4
    const/high16 v7, 0x40000000    # 2.0f

    goto/16 :goto_0

    .line 987
    :cond_5
    const v2, 0x7f0201ec

    goto/16 :goto_2

    .line 990
    :cond_6
    const/16 v2, 0x8

    goto/16 :goto_3

    .line 1040
    .restart local v9    # "bgColor":I
    .restart local v15    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_7
    const v2, -0x525253

    goto/16 :goto_4

    .line 1043
    .restart local v11    # "iColor":I
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1044
    :cond_9
    const-string/jumbo v3, "chat_messagePanelBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    goto/16 :goto_6

    .line 1426
    .end local v9    # "bgColor":I
    :cond_a
    const-string/jumbo v4, "chat_editDoneIcon"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    goto/16 :goto_7

    .line 944
    .end local v11    # "iColor":I
    .end local v15    # "themePrefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->calledRecordRunnable:Z

    return v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->calledRecordRunnable:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordAudioVideoRunnableStarted:Z

    return v0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordAudioVideoRunnableStarted:Z

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordSendText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ChatActivityEnterView;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->waitingForKeyboardOpen:Z

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->startedDraggingX:F

    return v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # F

    .prologue
    .line 98
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->startedDraggingX:F

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordIntefrace()V

    return-void
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->redDotPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->paintRecord:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lockDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lockDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lockTopDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lockTopDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lockArrowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lockArrowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    return v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lockBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lockBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lockShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lockShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->micDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->micDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cameraDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3302(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cameraDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->rect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dotPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/ChatActivityEnterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    return v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/ChatActivityEnterView;II)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showPopup(II)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardInternal()V

    return-void
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->removeGifFromInputField()V

    return-void
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendByEnter:Z

    return v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendMessage()V

    return-void
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/ChatActivityEnterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->innerTextChange:I

    return v0
.end method

.method static synthetic access$4602(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # I

    .prologue
    .line 98
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->innerTextChange:I

    return p1
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->ignoreTextChange:Z

    return v0
.end method

.method static synthetic access$4802(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageWebPageSearch:Z

    return p1
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->canWriteToChannel:Z

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastTypingTimeSend:J

    return-wide v0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/Components/ChatActivityEnterView;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastTypingTimeSend:J

    return-wide p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasBotCommands:Z

    return v0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->silent:Z

    return v0
.end method

.method static synthetic access$5302(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->silent:Z

    return p1
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldHint()V

    return-void
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/VideoEditedInfo;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoToSendMessageObject:Lorg/telegram/messenger/VideoEditedInfo;

    return-object v0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hideRecordedAudioPanel()V

    return-void
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/tgnet/TLRPC$TL_document;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersTabOpen:Z

    return v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->playDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersTabOpen:Z

    return p1
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPlayButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->pauseDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasRecordVideo:Z

    return v0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudioVideo:Z

    return v0
.end method

.method static synthetic access$6402(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudioVideo:Z

    return p1
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordAudioVideoRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setRecordVideoButtonVisible(ZZ)V

    return-void
.end method

.method static synthetic access$6900(Lorg/telegram/ui/Components/ChatActivityEnterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->distCanMove:F

    return v0
.end method

.method static synthetic access$6902(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # F

    .prologue
    .line 98
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->distCanMove:F

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    return-void
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersDragging:Z

    return v0
.end method

.method static synthetic access$7102(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersDragging:Z

    return p1
.end method

.method static synthetic access$7200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$7202(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$7302(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->forceShowSendButton:Z

    return v0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$7502(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ContextProgressView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    return-object v0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->resizeForTopView(Z)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpanded:Z

    return v0
.end method

.method static synthetic access$8002(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # I

    .prologue
    .line 98
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageReqId:I

    return p1
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpanded:Z

    return p1
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$8102(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$8202(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$8300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8602(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # I

    .prologue
    .line 98
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationType:I

    return p1
.end method

.method static synthetic access$8700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$8702(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$8800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$8902(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->pendingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setStickersExpanded(ZZ)V

    return-void
.end method

.method static synthetic access$9002(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->pendingLocationButton:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    return-object p1
.end method

.method static synthetic access$9100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateExpandabilityRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpansionAnim:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$9202(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpansionAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$9300(Lorg/telegram/ui/Components/ChatActivityEnterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpandedHeight:I

    return v0
.end method

.method static synthetic access$9302(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # I

    .prologue
    .line 98
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpandedHeight:I

    return p1
.end method

.method static synthetic access$9400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    return-object v0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/Components/ChatActivityEnterView;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpansionProgress:F

    return v0
.end method

.method static synthetic access$9502(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;
    .param p1, "x1"    # F

    .prologue
    .line 98
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpansionProgress:F

    return p1
.end method

.method static synthetic access$9600(Lorg/telegram/ui/Components/ChatActivityEnterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    return v0
.end method

.method static synthetic access$9700(Lorg/telegram/ui/Components/ChatActivityEnterView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 98
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    return v0
.end method

.method private checkSendButton(Z)V
    .locals 13
    .param p1, "animated"    # Z

    .prologue
    .line 2123
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_1

    .line 2479
    :cond_0
    :goto_0
    return-void

    .line 2126
    :cond_1
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPaused:Z

    if-eqz v5, :cond_2

    .line 2127
    const/4 p1, 0x0

    .line 2129
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTrimmedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2130
    .local v2, "message":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-gtz v5, :cond_3

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->forceShowSendButton:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoToSendMessageObject:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v5, :cond_16

    .line 2131
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EditTextCaption;->getCaption()Ljava/lang/String;

    move-result-object v1

    .line 2132
    .local v1, "caption":Ljava/lang/String;
    if-eqz v1, :cond_f

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_f

    :cond_4
    const/4 v3, 0x1

    .line 2133
    .local v3, "showBotButton":Z
    :goto_1
    if-nez v1, :cond_10

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_10

    :cond_5
    const/4 v4, 0x1

    .line 2134
    .local v4, "showSendButton":Z
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_6

    if-nez v3, :cond_6

    if-eqz v4, :cond_0

    .line 2135
    :cond_6
    if-eqz p1, :cond_13

    .line 2136
    iget v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EditTextCaption;->getCaption()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    :cond_7
    iget v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    if-nez v1, :cond_0

    .line 2139
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_9

    .line 2140
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2141
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    .line 2143
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_a

    .line 2144
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2145
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    .line 2148
    :cond_a
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_b

    .line 2149
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    .line 2150
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v9, "alpha"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 2151
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v9, "scaleX"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 2152
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    .line 2150
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2154
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2155
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    new-instance v6, Lorg/telegram/ui/Components/ChatActivityEnterView$31;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$31;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2170
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 2171
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldRight(I)V

    .line 2172
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v5, :cond_b

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_b

    .line 2173
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onAttachButtonHidden()V

    .line 2177
    :cond_b
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    .line 2179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2180
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_c

    .line 2181
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "scaleX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd    # 0.1f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2182
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "scaleY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd    # 0.1f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2183
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2185
    :cond_c
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_d

    .line 2186
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd    # 0.1f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2187
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd    # 0.1f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2188
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2190
    :cond_d
    if-eqz v3, :cond_11

    .line 2191
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd    # 0.1f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2192
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd    # 0.1f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2193
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2199
    :cond_e
    :goto_3
    if-eqz v1, :cond_12

    .line 2200
    const/4 v5, 0x3

    iput v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationType:I

    .line 2201
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2202
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2203
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2204
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2213
    :goto_4
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2214
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2215
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    new-instance v6, Lorg/telegram/ui/Components/ChatActivityEnterView$32;

    invoke-direct {v6, p0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$32;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2240
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 2132
    .end local v0    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v3    # "showBotButton":Z
    .end local v4    # "showSendButton":Z
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 2133
    .restart local v3    # "showBotButton":Z
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 2194
    .restart local v0    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v4    # "showSendButton":Z
    :cond_11
    if-eqz v4, :cond_e

    .line 2195
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd    # 0.1f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2196
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd    # 0.1f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2197
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2206
    :cond_12
    const/4 v5, 0x1

    iput v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationType:I

    .line 2207
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2208
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2209
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2210
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 2242
    .end local v0    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_13
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 2243
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 2244
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2245
    if-eqz v1, :cond_15

    .line 2246
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2247
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 2248
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2249
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2250
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 2251
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2252
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2253
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2264
    :goto_5
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2265
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 2266
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2267
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v5, :cond_14

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_14

    .line 2268
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onAttachButtonHidden()V

    .line 2270
    :cond_14
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldRight(I)V

    goto/16 :goto_0

    .line 2255
    :cond_15
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2256
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 2257
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2258
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2259
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 2260
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2261
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2262
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 2274
    .end local v1    # "caption":Ljava/lang/String;
    .end local v3    # "showBotButton":Z
    .end local v4    # "showSendButton":Z
    :cond_16
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v5, :cond_1e

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EmojiView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1e

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersTabOpen:Z

    if-eqz v5, :cond_1e

    sget-boolean v5, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v5, :cond_1e

    .line 2275
    if-eqz p1, :cond_1c

    .line 2276
    iget v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationType:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    .line 2280
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_17

    .line 2281
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2282
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    .line 2284
    :cond_17
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_18

    .line 2285
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2286
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    .line 2289
    :cond_18
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_19

    .line 2290
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2291
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    .line 2292
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v9, "alpha"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    .line 2293
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v9, "scaleX"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    .line 2294
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    .line 2292
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2296
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2297
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 2298
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldRight(I)V

    .line 2299
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_19

    .line 2300
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onAttachButtonShow()V

    .line 2304
    :cond_19
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2305
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    .line 2306
    const/4 v5, 0x4

    iput v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationType:I

    .line 2308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2309
    .restart local v0    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2310
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2311
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2312
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1a

    .line 2313
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd    # 0.1f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2314
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd    # 0.1f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2315
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2326
    :goto_6
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2327
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2328
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    new-instance v6, Lorg/telegram/ui/Components/ChatActivityEnterView$33;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$33;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2348
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 2316
    :cond_1a
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1b

    .line 2317
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "scaleX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd    # 0.1f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2318
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "scaleY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd    # 0.1f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2319
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2321
    :cond_1b
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd    # 0.1f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2322
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd    # 0.1f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2323
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 2350
    .end local v0    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_1c
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2351
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 2352
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2353
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2354
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 2355
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2356
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 2357
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 2358
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2359
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2360
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 2361
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2362
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2363
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2364
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2365
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2366
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 2367
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1d

    .line 2368
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onAttachButtonShow()V

    .line 2370
    :cond_1d
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2371
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldRight(I)V

    goto/16 :goto_0

    .line 2379
    :cond_1e
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1f

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1f

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 2380
    :cond_1f
    if-eqz p1, :cond_25

    .line 2381
    iget v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 2385
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_20

    .line 2386
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2387
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    .line 2389
    :cond_20
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_21

    .line 2390
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2391
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    .line 2394
    :cond_21
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_22

    .line 2395
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2396
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    .line 2397
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v9, "alpha"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    .line 2398
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const-string/jumbo v9, "scaleX"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    .line 2399
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    .line 2397
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2401
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2402
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation2:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 2403
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldRight(I)V

    .line 2404
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_22

    .line 2405
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onAttachButtonShow()V

    .line 2409
    :cond_22
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2410
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    .line 2411
    const/4 v5, 0x2

    iput v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationType:I

    .line 2413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2414
    .restart local v0    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "scaleX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2415
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "scaleY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2416
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2417
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_23

    .line 2418
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd    # 0.1f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2419
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd    # 0.1f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2420
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2431
    :goto_7
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2432
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2433
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    new-instance v6, Lorg/telegram/ui/Components/ChatActivityEnterView$34;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$34;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2452
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 2421
    :cond_23
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_24

    .line 2422
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd    # 0.1f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2423
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd    # 0.1f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2424
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2426
    :cond_24
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleX"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd    # 0.1f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2427
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "scaleY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const v9, 0x3dcccccd    # 0.1f

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2428
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 2454
    .end local v0    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_25
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2455
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 2456
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2457
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2458
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 2459
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2460
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2461
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 2462
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2463
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 2464
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 2465
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2466
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2467
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2468
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->expandStickersButton:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2469
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2470
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 2471
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_26

    .line 2472
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onAttachButtonShow()V

    .line 2474
    :cond_26
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2475
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldRight(I)V

    goto/16 :goto_0
.end method

.method private createEmojiView()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 3079
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    .line 3269
    :goto_0
    return-void

    .line 3082
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/EmojiView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowStickers:Z

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowGifs:Z

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/EmojiView;-><init>(ZZLandroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 3083
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 3084
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$41;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$41;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setListener(Lorg/telegram/ui/Components/EmojiView$Listener;)V

    .line 3204
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$42;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$42;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setDragListener(Lorg/telegram/ui/Components/EmojiView$DragListener;)V

    .line 3266
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 3267
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->addView(Landroid/view/View;)V

    .line 3268
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkChannelRights()V

    goto :goto_0
.end method

.method private hideRecordedAudioPanel()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 2022
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendPath:Ljava/lang/String;

    .line 2023
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2024
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2025
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoToSendMessageObject:Lorg/telegram/messenger/VideoEditedInfo;

    .line 2026
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->destroy()V

    .line 2027
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2028
    .local v0, "AnimatorSet":Landroid/animation/AnimatorSet;
    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    .line 2029
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 2028
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2031
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2032
    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$29;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$29;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2039
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2040
    return-void
.end method

.method private onWindowSizeChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1811
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getHeight()I

    move-result v0

    .line 1812
    .local v0, "size":I
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-nez v1, :cond_0

    .line 1813
    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiPadding:I

    sub-int/2addr v0, v1

    .line 1815
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v1, :cond_1

    .line 1816
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onWindowSizeChanged(I)V

    .line 1818
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1819
    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_3

    .line 1820
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowShowTopView:Z

    if-eqz v1, :cond_2

    .line 1821
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowShowTopView:Z

    .line 1822
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->needShowTopView:Z

    if-eqz v1, :cond_2

    .line 1823
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1824
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->resizeForTopView(Z)V

    .line 1825
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1839
    :cond_2
    :goto_0
    return-void

    .line 1829
    :cond_3
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowShowTopView:Z

    if-nez v1, :cond_2

    .line 1830
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowShowTopView:Z

    .line 1831
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->needShowTopView:Z

    if-eqz v1, :cond_2

    .line 1832
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1833
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->resizeForTopView(Z)V

    .line 1834
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private openKeyboardInternal()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3418
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPaused:Z

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showPopup(II)V

    .line 3419
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->requestFocus()Z

    .line 3420
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 3421
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPaused:Z

    if-eqz v0, :cond_3

    .line 3422
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->showKeyboardOnResume:Z

    .line 3428
    :cond_1
    :goto_1
    return-void

    .line 3418
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 3423
    :cond_3
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_1

    .line 3424
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->waitingForKeyboardOpen:Z

    .line 3425
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3426
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1
.end method

.method private removeGifFromInputField()V
    .locals 2

    .prologue
    .line 3410
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v0, :cond_0

    .line 3411
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "@gif "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3412
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    .line 3415
    :cond_0
    return-void
.end method

.method private resizeForTopView(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1842
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1843
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1844
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1845
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpanded:Z

    if-eqz v1, :cond_0

    .line 1846
    const/4 v1, 0x1

    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setStickersExpanded(ZZ)V

    .line 1847
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 1843
    goto :goto_0
.end method

.method private sendMessage()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v2, 0x0

    .line 2043
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_3

    .line 2046
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v0, v0

    if-gez v0, :cond_2

    .line 2047
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v1, v4

    neg-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v11

    .line 2048
    .local v11, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v11, :cond_1

    iget v0, v11, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->groupBigSize:I

    if-le v0, v1, :cond_1

    .line 2049
    const-string/jumbo v10, "bigchat_message"

    .line 2056
    .end local v11    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    .local v10, "action":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10, v0}, Lorg/telegram/messenger/MessagesController;->isFeatureEnabled(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2090
    .end local v10    # "action":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 2051
    .restart local v11    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1
    const-string/jumbo v10, "chat_message"

    .restart local v10    # "action":Ljava/lang/String;
    goto :goto_0

    .line 2054
    .end local v10    # "action":Ljava/lang/String;
    .end local v11    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_2
    const-string/jumbo v10, "pm_message"

    .restart local v10    # "action":Ljava/lang/String;
    goto :goto_0

    .line 2060
    .end local v10    # "action":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoToSendMessageObject:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v0, :cond_4

    .line 2061
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(I)V

    .line 2062
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hideRecordedAudioPanel()V

    .line 2063
    invoke-direct {p0, v14}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    goto :goto_1

    .line 2065
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v0, :cond_7

    .line 2066
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    .line 2067
    .local v13, "playing":Lorg/telegram/messenger/MessageObject;
    if-eqz v13, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v13, v0, :cond_5

    .line 2068
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, v14, v14}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 2070
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendPath:Ljava/lang/String;

    iget-wide v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v9, 0x0

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;I)V

    .line 2071
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v0, :cond_6

    .line 2072
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;)V

    .line 2074
    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hideRecordedAudioPanel()V

    .line 2075
    invoke-direct {p0, v14}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    goto :goto_1

    .line 2078
    .end local v13    # "playing":Lorg/telegram/messenger/MessageObject;
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v12

    .line 2079
    .local v12, "message":Ljava/lang/CharSequence;
    invoke-virtual {p0, v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->processSendingText(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2080
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    .line 2081
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastTypingTimeSend:J

    .line 2082
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v0, :cond_0

    .line 2083
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v0, v12}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2085
    :cond_8
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->forceShowSendButton:Z

    if-eqz v0, :cond_0

    .line 2086
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v0, :cond_0

    .line 2087
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method private setEmojiButtonImage()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3375
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-nez v5, :cond_4

    .line 3376
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "emoji"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string/jumbo v6, "selected_page"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3380
    .local v1, "currentPage":I
    :goto_0
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowStickers:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowGifs:Z

    if-nez v5, :cond_5

    .line 3381
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    const v6, 0x7f0200f5

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3387
    :cond_1
    :goto_1
    if-eq v1, v3, :cond_2

    if-ne v1, v7, :cond_7

    :cond_2
    :goto_2
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersTabOpen:Z

    .line 3389
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_3

    .line 3390
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "theme"

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3391
    .local v2, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "chatEditTextIconsColor"

    const v4, -0x525253

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3392
    .local v0, "color":I
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3396
    .end local v0    # "color":I
    .end local v2    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_3
    return-void

    .line 3378
    .end local v1    # "currentPage":I
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EmojiView;->getCurrentPage()I

    move-result v1

    .restart local v1    # "currentPage":I
    goto :goto_0

    .line 3382
    :cond_5
    if-ne v1, v3, :cond_6

    .line 3383
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    const v6, 0x7f0200f6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 3384
    :cond_6
    if-ne v1, v7, :cond_1

    .line 3385
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    const v6, 0x7f0200f2

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_7
    move v3, v4

    .line 3387
    goto :goto_2
.end method

.method private setRecordVideoButtonVisible(ZZ)V
    .locals 11
    .param p1, "visible"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 1517
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    .line 1560
    :goto_0
    return-void

    .line 1520
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1521
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_1

    .line 1522
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1523
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonAnimation:Landroid/animation/AnimatorSet;

    .line 1525
    :cond_1
    if-eqz p2, :cond_c

    .line 1526
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->mainconfig:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1527
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 1528
    .local v1, "isChannel":Z
    iget-wide v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v3, v4

    if-gez v3, :cond_2

    .line 1529
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v4, v4

    neg-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1530
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v3, :cond_4

    const/4 v1, 0x1

    .line 1532
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_2
    :goto_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    if-eqz v1, :cond_5

    const-string/jumbo v3, "currentModeVideoChannel"

    :goto_3
    invoke-interface {v4, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1533
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonAnimation:Landroid/animation/AnimatorSet;

    .line 1534
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x6

    new-array v5, v3, [Landroid/animation/Animator;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    const-string/jumbo v8, "scaleX"

    const/4 v3, 0x1

    new-array v9, v3, [F

    const/4 v10, 0x0

    if-eqz p1, :cond_6

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_4
    aput v3, v9, v10

    .line 1535
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    const-string/jumbo v8, "scaleY"

    const/4 v3, 0x1

    new-array v9, v3, [F

    const/4 v10, 0x0

    if-eqz p1, :cond_7

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_5
    aput v3, v9, v10

    .line 1536
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    const-string/jumbo v8, "alpha"

    const/4 v3, 0x1

    new-array v9, v3, [F

    const/4 v10, 0x0

    if-eqz p1, :cond_8

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_6
    aput v3, v9, v10

    .line 1537
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    const-string/jumbo v8, "scaleX"

    const/4 v3, 0x1

    new-array v9, v3, [F

    const/4 v10, 0x0

    if-eqz p1, :cond_9

    const v3, 0x3dcccccd    # 0.1f

    :goto_7
    aput v3, v9, v10

    .line 1538
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    const-string/jumbo v8, "scaleY"

    const/4 v3, 0x1

    new-array v9, v3, [F

    const/4 v10, 0x0

    if-eqz p1, :cond_a

    const v3, 0x3dcccccd    # 0.1f

    :goto_8
    aput v3, v9, v10

    .line 1539
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    const-string/jumbo v8, "alpha"

    const/4 v3, 0x1

    new-array v9, v3, [F

    const/4 v10, 0x0

    if-eqz p1, :cond_b

    const/4 v3, 0x0

    :goto_9
    aput v3, v9, v10

    .line 1540
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v5, v6

    .line 1534
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1541
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/Components/ChatActivityEnterView$25;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$25;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1549
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1550
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1551
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1520
    .end local v1    # "isChannel":Z
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1530
    .restart local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v1    # "isChannel":Z
    .restart local v2    # "preferences":Landroid/content/SharedPreferences;
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 1532
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_5
    const-string/jumbo v3, "currentModeVideo"

    goto/16 :goto_3

    .line 1534
    :cond_6
    const v3, 0x3dcccccd    # 0.1f

    goto/16 :goto_4

    .line 1535
    :cond_7
    const v3, 0x3dcccccd    # 0.1f

    goto/16 :goto_5

    .line 1536
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 1537
    :cond_9
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_7

    .line 1538
    :cond_a
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_8

    .line 1539
    :cond_b
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_9

    .line 1553
    .end local v1    # "isChannel":Z
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :cond_c
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_d

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_a
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1554
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_e

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_b
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1555
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_f

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_c
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1556
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_10

    const v3, 0x3dcccccd    # 0.1f

    :goto_d
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1557
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_11

    const v3, 0x3dcccccd    # 0.1f

    :goto_e
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1558
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioSendButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_12

    const/4 v3, 0x0

    :goto_f
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_0

    .line 1553
    :cond_d
    const v3, 0x3dcccccd    # 0.1f

    goto :goto_a

    .line 1554
    :cond_e
    const v3, 0x3dcccccd    # 0.1f

    goto :goto_b

    .line 1555
    :cond_f
    const/4 v3, 0x0

    goto :goto_c

    .line 1556
    :cond_10
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_d

    .line 1557
    :cond_11
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_e

    .line 1558
    :cond_12
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_f
.end method

.method private setStickersExpanded(ZZ)V
    .locals 11
    .param p1, "expanded"    # Z
    .param p2, "animated"    # Z

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 3734
    if-eqz p1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView;->areThereAnyStickers()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3822
    :goto_0
    return-void

    .line 3736
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpanded:Z

    .line 3738
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-le v2, v4, :cond_2

    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    .line 3739
    .local v1, "origHeight":I
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpansionAnim:Landroid/animation/Animator;

    if-eqz v2, :cond_1

    .line 3740
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpansionAnim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 3741
    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpanded:Z

    if-eqz v2, :cond_5

    .line 3742
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getHeight()I

    move-result v4

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v2, v5, :cond_3

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_2
    sub-int v2, v4, v2

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpandedHeight:I

    .line 3743
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpandedHeight:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3744
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->requestLayout()V

    .line 3745
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    new-instance v4, Lorg/telegram/ui/Components/ChatActivityEnterView$ScrimDrawable;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ScrimDrawable;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 3746
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    .line 3747
    if-eqz p2, :cond_4

    .line 3748
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3749
    .local v0, "anims":Landroid/animation/AnimatorSet;
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->roundedTranslationYProperty:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpandedHeight:I

    sub-int/2addr v6, v1

    neg-int v6, v6

    aput v6, v5, v3

    .line 3750
    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->roundedTranslationYProperty:Landroid/util/Property;

    new-array v6, v8, [I

    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpandedHeight:I

    sub-int/2addr v7, v1

    neg-int v7, v7

    aput v7, v6, v3

    .line 3751
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v8

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersArrow:Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;

    const-string/jumbo v5, "animationProgress"

    new-array v6, v8, [F

    aput v10, v6, v3

    .line 3752
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v9

    .line 3749
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3754
    const-wide/16 v4, 0x190

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3755
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3756
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$43;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$43;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3764
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$44;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$44;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3771
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpansionAnim:Landroid/animation/Animator;

    .line 3772
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/4 v3, 0x0

    invoke-virtual {v2, v9, v3}, Lorg/telegram/ui/Components/EmojiView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3773
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 3738
    .end local v0    # "anims":Landroid/animation/AnimatorSet;
    .end local v1    # "origHeight":I
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    goto/16 :goto_1

    .restart local v1    # "origHeight":I
    :cond_3
    move v2, v3

    .line 3742
    goto/16 :goto_2

    .line 3775
    :cond_4
    iput v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpansionProgress:F

    .line 3776
    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpandedHeight:I

    sub-int/2addr v2, v1

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setTranslationY(F)V

    .line 3777
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    iget v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpandedHeight:I

    sub-int/2addr v3, v1

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    .line 3778
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersArrow:Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;->setAnimationProgress(F)V

    goto/16 :goto_0

    .line 3781
    :cond_5
    if-eqz p2, :cond_6

    .line 3782
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3783
    .restart local v0    # "anims":Landroid/animation/AnimatorSet;
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->roundedTranslationYProperty:Landroid/util/Property;

    new-array v5, v8, [I

    aput v3, v5, v3

    .line 3784
    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->roundedTranslationYProperty:Landroid/util/Property;

    new-array v6, v8, [I

    aput v3, v6, v3

    .line 3785
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v8

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersArrow:Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;

    const-string/jumbo v5, "animationProgress"

    new-array v6, v8, [F

    aput v7, v6, v3

    .line 3786
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v9

    .line 3783
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3788
    const-wide/16 v4, 0x190

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 3789
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3790
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$45;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$45;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3797
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$46;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$46;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3808
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpansionAnim:Landroid/animation/Animator;

    .line 3809
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    const/4 v3, 0x0

    invoke-virtual {v2, v9, v3}, Lorg/telegram/ui/Components/EmojiView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3810
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 3812
    .end local v0    # "anims":Landroid/animation/AnimatorSet;
    :cond_6
    iput v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpansionProgress:F

    .line 3813
    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setTranslationY(F)V

    .line 3814
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    .line 3815
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3816
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->requestLayout()V

    .line 3817
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 3818
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setWillNotDraw(Z)V

    .line 3819
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersArrow:Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView$AnimatedArrowDrawable;->setAnimationProgress(F)V

    goto/16 :goto_0
.end method

.method private showPopup(II)V
    .locals 11
    .param p1, "show"    # I
    .param p2, "contentType"    # I

    .prologue
    const/high16 v10, 0x43480000    # 200.0f

    const/16 v7, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3285
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "theme"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 3286
    .local v4, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "chatEditTextIconsColor"

    const v6, -0x525253

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3287
    .local v0, "color":I
    if-ne p1, v9, :cond_12

    .line 3288
    if-nez p2, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-nez v5, :cond_2

    .line 3289
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    if-nez v5, :cond_1

    .line 3371
    :cond_0
    :goto_0
    return-void

    .line 3292
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->createEmojiView()V

    .line 3295
    :cond_2
    const/4 v2, 0x0

    .line 3296
    .local v2, "currentView":Landroid/view/View;
    if-nez p2, :cond_e

    .line 3297
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 3298
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BotKeyboardView;->getVisibility()I

    move-result v5

    if-eq v5, v7, :cond_3

    .line 3299
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/BotKeyboardView;->setVisibility(I)V

    .line 3301
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 3309
    :cond_4
    :goto_1
    iput p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    .line 3311
    iget v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    if-gtz v5, :cond_5

    .line 3312
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "emoji"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string/jumbo v6, "kbd_height"

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    .line 3314
    :cond_5
    iget v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    if-gtz v5, :cond_6

    .line 3315
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "emoji"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string/jumbo v6, "kbd_height_land3"

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    .line 3317
    :cond_6
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-le v5, v6, :cond_10

    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    .line 3318
    .local v1, "currentHeight":I
    :goto_2
    if-ne p2, v9, :cond_7

    .line 3319
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BotKeyboardView;->getKeyboardHeight()I

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3321
    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    if-eqz v5, :cond_8

    .line 3322
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/BotKeyboardView;->setPanelHeight(I)V

    .line 3325
    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 3326
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3327
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3328
    sget-boolean v5, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v5, :cond_9

    .line 3329
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 3331
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v5, :cond_c

    .line 3332
    iput v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiPadding:I

    .line 3333
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->requestLayout()V

    .line 3334
    if-nez p2, :cond_11

    .line 3335
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    const v6, 0x7f0200f3

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3340
    :cond_a
    :goto_3
    sget-boolean v5, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v0, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3342
    :cond_b
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateBotButton()V

    .line 3343
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onWindowSizeChanged()V

    .line 3366
    .end local v1    # "currentHeight":I
    .end local v2    # "currentView":Landroid/view/View;
    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_c
    :goto_4
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersTabOpen:Z

    if-eqz v5, :cond_d

    .line 3367
    invoke-direct {p0, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    .line 3369
    :cond_d
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpanded:Z

    if-eqz v5, :cond_0

    if-eq p1, v9, :cond_0

    .line 3370
    invoke-direct {p0, v8, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setStickersExpanded(ZZ)V

    goto/16 :goto_0

    .line 3302
    .restart local v2    # "currentView":Landroid/view/View;
    :cond_e
    if-ne p2, v9, :cond_4

    .line 3303
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EmojiView;->getVisibility()I

    move-result v5

    if-eq v5, v7, :cond_f

    .line 3304
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 3306
    :cond_f
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/BotKeyboardView;->setVisibility(I)V

    .line 3307
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    goto/16 :goto_1

    .line 3317
    :cond_10
    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    goto :goto_2

    .line 3336
    .restart local v1    # "currentHeight":I
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_11
    if-ne p2, v9, :cond_a

    .line 3337
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setEmojiButtonImage()V

    goto :goto_3

    .line 3346
    .end local v1    # "currentHeight":I
    .end local v2    # "currentView":Landroid/view/View;
    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_12
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_13

    .line 3347
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setEmojiButtonImage()V

    .line 3349
    :cond_13
    const/4 v5, -0x1

    iput v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    .line 3350
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v5, :cond_14

    .line 3351
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EmojiView;->setVisibility(I)V

    .line 3353
    :cond_14
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    if-eqz v5, :cond_15

    .line 3354
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/BotKeyboardView;->setVisibility(I)V

    .line 3356
    :cond_15
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v5, :cond_17

    .line 3357
    if-nez p1, :cond_16

    .line 3358
    iput v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiPadding:I

    .line 3360
    :cond_16
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->requestLayout()V

    .line 3361
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onWindowSizeChanged()V

    .line 3363
    :cond_17
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateBotButton()V

    goto :goto_4
.end method

.method private updateBotButton()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 2873
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    .line 2901
    :goto_0
    return-void

    .line 2876
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasBotCommands:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    if-eqz v2, :cond_8

    .line 2877
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 2878
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2881
    :cond_2
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2882
    .local v1, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "chatEditTextIconsColor"

    const v3, -0x525253

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2884
    .local v0, "color":I
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    if-eqz v2, :cond_7

    .line 2885
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 2886
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    const v3, 0x7f0200f3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2894
    :goto_1
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2899
    .end local v0    # "color":I
    .end local v1    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_3
    :goto_2
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldRight(I)V

    .line 2900
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_9

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_9

    :cond_5
    const/high16 v2, 0x42400000    # 48.0f

    :goto_3
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setPivotX(F)V

    goto :goto_0

    .line 2888
    .restart local v0    # "color":I
    .restart local v1    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    const v3, 0x7f020036

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 2891
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    const v3, 0x7f020035

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 2897
    .end local v0    # "color":I
    .end local v1    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 2900
    :cond_9
    const/high16 v2, 0x42c00000    # 96.0f

    goto :goto_3
.end method

.method private updateFieldHint()V
    .locals 7

    .prologue
    const v6, 0x7f0706fa

    .line 1976
    const/4 v1, 0x0

    .line 1977
    .local v1, "isChannel":Z
    iget-wide v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v2, v2

    if-gez v2, :cond_0

    .line 1978
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v3, v4

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1979
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 1981
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_0
    :goto_0
    if-eqz v1, :cond_5

    .line 1982
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_3

    .line 1983
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingCaption:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "Caption"

    const v4, 0x7f07010c

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/EditTextCaption;->setHintText(Ljava/lang/String;)V

    .line 1994
    :goto_2
    return-void

    .line 1979
    .restart local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1983
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_2
    const-string/jumbo v2, "TypeMessage"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1985
    :cond_3
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->silent:Z

    if-eqz v2, :cond_4

    .line 1986
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string/jumbo v3, "ChannelSilentBroadcast"

    const v4, 0x7f070169

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setHintText(Ljava/lang/String;)V

    goto :goto_2

    .line 1988
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string/jumbo v3, "ChannelBroadcast"

    const v4, 0x7f070129

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setHintText(Ljava/lang/String;)V

    goto :goto_2

    .line 1992
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string/jumbo v3, "TypeMessage"

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setHintText(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateFieldRight(I)V
    .locals 5
    .param p1, "attachVisible"    # I

    .prologue
    const/high16 v4, 0x42c40000    # 98.0f

    const/high16 v3, 0x42480000    # 50.0f

    const/high16 v2, 0x40000000    # 2.0f

    .line 2482
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_1

    .line 2504
    :cond_0
    :goto_0
    return-void

    .line 2485
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextCaption;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2486
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    .line 2487
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 2488
    :cond_3
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2503
    :cond_4
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EditTextCaption;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2490
    :cond_5
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 2492
    :cond_6
    const/4 v1, 0x2

    if-ne p1, v1, :cond_a

    .line 2493
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 2494
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    .line 2495
    :cond_8
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 2497
    :cond_9
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 2501
    :cond_a
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1
.end method

.method private updateRecordIntefrace()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2507
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudioVideo:Z

    if-eqz v3, :cond_4

    .line 2508
    iget v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordInterfaceState:I

    if-ne v3, v10, :cond_1

    .line 2596
    :cond_0
    :goto_0
    return-void

    .line 2511
    :cond_1
    iput v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordInterfaceState:I

    .line 2513
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_2

    .line 2514
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 2515
    .local v2, "pm":Landroid/os/PowerManager;
    const v3, 0x20000006

    const-string/jumbo v4, "audio record lock"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2516
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2521
    .end local v2    # "pm":Landroid/os/PowerManager;
    :cond_2
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    .line 2523
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2524
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    invoke-virtual {v3, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setVisibility(I)V

    .line 2525
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setAmplitude(D)V

    .line 2526
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeText:Landroid/widget/TextView;

    const-string/jumbo v4, "00:00"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2527
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordDot:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->resetAlpha()V

    .line 2528
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastTimeString:Ljava/lang/String;

    .line 2529
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastTypingSendTime:J

    .line 2531
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 2532
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2533
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2534
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->slideText:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2535
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setX(F)V

    .line 2536
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_3

    .line 2537
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2539
    :cond_3
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    .line 2540
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "translationX"

    new-array v7, v10, [F

    aput v11, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    const-string/jumbo v6, "scale"

    new-array v7, v10, [F

    aput v12, v7, v9

    .line 2541
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v10

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "alpha"

    new-array v7, v10, [F

    aput v11, v7, v9

    .line 2542
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v13

    .line 2540
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2543
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2544
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/Components/ChatActivityEnterView$35;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$35;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2553
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2554
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 2518
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :catch_0
    move-exception v0

    .line 2519
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 2556
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_5

    .line 2558
    :try_start_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2559
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->wakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2564
    :cond_5
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    .line 2565
    iget v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordInterfaceState:I

    if-eqz v3, :cond_0

    .line 2568
    iput v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordInterfaceState:I

    .line 2570
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_6

    .line 2571
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2573
    :cond_6
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    .line 2574
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordPanel:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "translationX"

    new-array v7, v10, [F

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    const-string/jumbo v6, "scale"

    new-array v7, v10, [F

    aput v11, v7, v9

    .line 2575
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v10

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v6, "alpha"

    new-array v7, v10, [F

    aput v12, v7, v9

    .line 2576
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v13

    .line 2574
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2577
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2578
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    new-instance v4, Lorg/telegram/ui/Components/ChatActivityEnterView$36;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$36;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2593
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2594
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->runningAnimationAudio:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 2560
    :catch_1
    move-exception v0

    .line 2561
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private updateTheme()V
    .locals 13

    .prologue
    .line 1446
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v11, "theme"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1447
    .local v8, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v10, "themeColor"

    const v11, -0xab8a62

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1448
    .local v2, "def":I
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const-string/jumbo v11, "chatSendIconColor"

    const-string/jumbo v12, "chatEditTextIconsColor"

    invoke-interface {v8, v12, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v10, v11, v12}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1449
    const-string/jumbo v10, "chatEditTextColor"

    const/high16 v11, -0x1000000

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1450
    .local v3, "editTextColor":I
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v10, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setTextColor(I)V

    .line 1452
    const-string/jumbo v10, "chatEditTextColor"

    const/high16 v11, -0x1000000

    const v12, 0x3eb33333    # 0.35f

    invoke-static {v10, v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->getIntAlphaColor(Ljava/lang/String;IF)I

    move-result v7

    .line 1453
    .local v7, "hintColor":I
    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v10, -0x1000000

    if-eq v3, v10, :cond_1

    move v10, v7

    :goto_0
    invoke-virtual {v11, v10}, Lorg/telegram/ui/Components/EditTextCaption;->setHintColor(I)V

    .line 1454
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/high16 v11, -0x1000000

    if-eq v3, v11, :cond_2

    .end local v7    # "hintColor":I
    :goto_1
    invoke-virtual {v10, v7}, Lorg/telegram/ui/Components/EditTextCaption;->setHintTextColor(I)V

    .line 1455
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string/jumbo v11, "chatEditTextSize"

    const/16 v12, 0x12

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/EditTextCaption;->setTextSize(F)V

    .line 1457
    const-string/jumbo v10, "chatEditTextBGColor"

    const/4 v11, -0x1

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1459
    .local v0, "color":I
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setBackgroundColor(I)V

    .line 1460
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1461
    const-string/jumbo v10, "chatEditTextBGGradient"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1462
    .local v9, "val":I
    if-lez v9, :cond_0

    .line 1464
    packed-switch v9, :pswitch_data_0

    .line 1475
    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1477
    .local v5, "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :goto_2
    const-string/jumbo v10, "chatEditTextBGGradientColor"

    const/4 v11, -0x1

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1478
    .local v6, "gradColor":I
    const/4 v10, 0x2

    new-array v1, v10, [I

    const/4 v10, 0x0

    aput v0, v1, v10

    const/4 v10, 0x1

    aput v6, v1, v10

    .line 1479
    .local v1, "colors":[I
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4, v5, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1481
    .local v4, "gd":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1482
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->textFieldContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1487
    .end local v1    # "colors":[I
    .end local v4    # "gd":Landroid/graphics/drawable/GradientDrawable;
    .end local v5    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    .end local v6    # "gradColor":I
    :cond_0
    return-void

    .line 1453
    .end local v0    # "color":I
    .end local v9    # "val":I
    .restart local v7    # "hintColor":I
    :cond_1
    const v10, -0x4d4d4e

    goto :goto_0

    .line 1454
    :cond_2
    const v7, -0x4d4d4e

    goto :goto_1

    .line 1466
    .end local v7    # "hintColor":I
    .restart local v0    # "color":I
    .restart local v9    # "val":I
    :pswitch_0
    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1467
    .restart local v5    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_2

    .line 1469
    .end local v5    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_1
    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1470
    .restart local v5    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_2

    .line 1472
    .end local v5    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_2
    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1473
    .restart local v5    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_2

    .line 1464
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 4
    .param p1, "searchImage"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 3463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/query/StickersQuery;->addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;I)V

    .line 3464
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    .line 3465
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 3467
    :cond_0
    return-void
.end method

.method public addStickerToRecent(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 1
    .param p1, "sticker"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 3280
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->createEmojiView()V

    .line 3281
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EmojiView;->addRecentSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 3282
    return-void
.end method

.method public addTopView(Landroid/view/View;I)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "height"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 1600
    if-nez p1, :cond_0

    .line 1608
    :goto_0
    return-void

    .line 1603
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    .line 1604
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1605
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1606
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    const/4 v0, -0x1

    int-to-float v1, p2

    const/16 v2, 0x33

    const/high16 v4, 0x40000000    # 2.0f

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v8, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1607
    iput-boolean v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->needShowTopView:Z

    goto :goto_0
.end method

.method public cancelRecordingAudioVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1571
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasRecordVideo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1572
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(I)V

    .line 1577
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudioVideo:Z

    .line 1578
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordIntefrace()V

    .line 1579
    return-void

    .line 1574
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 1575
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaController;->stopRecording(I)V

    goto :goto_0
.end method

.method public checkChannelRights()V
    .locals 4

    .prologue
    .line 1878
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-nez v1, :cond_1

    .line 1888
    :cond_0
    :goto_0
    return-void

    .line 1881
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1882
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1883
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_media:Z

    if-nez v1, :cond_3

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1884
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v1, :cond_0

    .line 1885
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_stickers:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/Components/EmojiView;->setStickersBanned(ZI)V

    goto :goto_0

    .line 1883
    :cond_3
    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_1

    .line 1885
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public checkRoundVideo()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1931
    iget-boolean v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasRecordVideo:Z

    if-eqz v9, :cond_0

    .line 1965
    :goto_0
    return-void

    .line 1934
    :cond_0
    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_1

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-ge v9, v10, :cond_2

    .line 1935
    :cond_1
    iput-boolean v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasRecordVideo:Z

    .line 1936
    invoke-direct {p0, v8, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setRecordVideoButtonVisible(ZZ)V

    goto :goto_0

    .line 1939
    :cond_2
    iget-wide v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v5, v10

    .line 1940
    .local v5, "lower_id":I
    iget-wide v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    const/16 v9, 0x20

    shr-long/2addr v10, v9

    long-to-int v3, v10

    .line 1941
    .local v3, "high_id":I
    if-nez v5, :cond_6

    if-eqz v3, :cond_6

    .line 1942
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v2

    .line 1943
    .local v2, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    iget v9, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v9

    const/16 v10, 0x42

    if-lt v9, v10, :cond_3

    .line 1944
    iput-boolean v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasRecordVideo:Z

    .line 1949
    .end local v2    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :cond_3
    :goto_1
    const/4 v4, 0x0

    .line 1950
    .local v4, "isChannel":Z
    iget-wide v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v9, v10

    if-gez v9, :cond_5

    .line 1951
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-wide v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v10, v10

    neg-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1952
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-boolean v9, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v9, :cond_7

    move v4, v7

    .line 1953
    :goto_2
    if-eqz v4, :cond_5

    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v7, :cond_5

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    if-eqz v7, :cond_4

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->post_messages:Z

    if-nez v7, :cond_5

    .line 1954
    :cond_4
    iput-boolean v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasRecordVideo:Z

    .line 1957
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_5
    iget-boolean v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasRecordVideo:Z

    if-eqz v7, :cond_9

    .line 1958
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/camera/CameraController;->initCamera()V

    .line 1959
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->mainconfig:Ljava/lang/String;

    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1960
    .local v6, "preferences":Landroid/content/SharedPreferences;
    if-eqz v4, :cond_8

    const-string/jumbo v7, "currentModeVideoChannel"

    :goto_3
    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1961
    .local v1, "currentModeVideo":Z
    invoke-direct {p0, v1, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setRecordVideoButtonVisible(ZZ)V

    goto/16 :goto_0

    .line 1947
    .end local v1    # "currentModeVideo":Z
    .end local v4    # "isChannel":Z
    .end local v6    # "preferences":Landroid/content/SharedPreferences;
    :cond_6
    iput-boolean v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasRecordVideo:Z

    goto :goto_1

    .restart local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v4    # "isChannel":Z
    :cond_7
    move v4, v8

    .line 1952
    goto :goto_2

    .line 1960
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v6    # "preferences":Landroid/content/SharedPreferences;
    :cond_8
    const-string/jumbo v7, "currentModeVideo"

    goto :goto_3

    .line 1963
    .end local v6    # "preferences":Landroid/content/SharedPreferences;
    :cond_9
    invoke-direct {p0, v8, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setRecordVideoButtonVisible(ZZ)V

    goto/16 :goto_0
.end method

.method public closeKeyboard()V
    .locals 1

    .prologue
    .line 3451
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 3452
    return-void
.end method

.method public didPressedBotButton(Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)V
    .locals 19
    .param p1, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .param p2, "replyMessageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 2976
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 3068
    :cond_0
    :goto_0
    return-void

    .line 2979
    :cond_1
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButton;

    if-eqz v4, :cond_2

    .line 2980
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p2

    invoke-virtual/range {v4 .. v13}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_0

    .line 2981
    :cond_2
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrl;

    if-eqz v4, :cond_3

    .line 2982
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->url:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ChatActivity;->showOpenUrlAlert(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2983
    :cond_3
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPhone;

    if-eqz v4, :cond_4

    .line 2984
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ChatActivity;->shareMyContact(Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 2985
    :cond_4
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestGeoLocation;

    if-eqz v4, :cond_5

    .line 2986
    new-instance v15, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    invoke-direct {v15, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2987
    .local v15, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v4, "ShareYouLocationTitle"

    const v5, 0x7f07067a

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2988
    const-string/jumbo v4, "ShareYouLocationInfo"

    const v5, 0x7f070678

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2989
    const-string/jumbo v4, "OK"

    const v5, 0x7f0704f5

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/ChatActivityEnterView$39;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v5, v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$39;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V

    invoke-virtual {v15, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3001
    const-string/jumbo v4, "Cancel"

    const v5, 0x7f070105

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v15, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3002
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 3003
    .end local v15    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_5
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;

    if-nez v4, :cond_6

    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    if-nez v4, :cond_6

    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    if-eqz v4, :cond_7

    .line 3004
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v4, v5, v0, v1, v6}, Lorg/telegram/messenger/SendMessagesHelper;->sendCallback(ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_0

    .line 3005
    :cond_7
    move-object/from16 v0, p1

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;

    if-eqz v4, :cond_0

    .line 3006
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v4, p1

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/ChatActivity;->processSwitchButton(Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3009
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->same_peer:Z

    if-eqz v4, :cond_9

    .line 3010
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v17, v0

    .line 3011
    .local v17, "uid":I
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    if-eqz v4, :cond_8

    .line 3012
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    move/from16 v17, v0

    .line 3014
    :cond_8
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v18

    .line 3015
    .local v18, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v18, :cond_0

    .line 3018
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->query:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3020
    .end local v17    # "uid":I
    .end local v18    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_9
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 3021
    .local v14, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "onlySelect"

    const/4 v5, 0x1

    invoke-virtual {v14, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3022
    const-string/jumbo v4, "dialogsType"

    const/4 v5, 0x1

    invoke-virtual {v14, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3023
    new-instance v16, Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 3024
    .local v16, "fragment":Lorg/telegram/ui/DialogsActivity;
    new-instance v4, Lorg/telegram/ui/Components/ChatActivityEnterView$40;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$40;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 3065
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 28
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 3553
    sget v20, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 3554
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 3555
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/Components/EmojiView;->invalidateViews()V

    .line 3557
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 3558
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/Components/BotKeyboardView;->invalidateViews()V

    .line 3719
    :cond_1
    :goto_0
    return-void

    .line 3560
    :cond_2
    sget v20, Lorg/telegram/messenger/NotificationCenter;->recordProgressChanged:I

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 3561
    const/16 v20, 0x0

    aget-object v20, p2, v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 3562
    .local v18, "t":J
    const-wide/16 v20, 0x3e8

    div-long v20, v18, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 3563
    .local v17, "time":Ljava/lang/Long;
    const-wide/16 v20, 0x3e8

    rem-long v20, v18, v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    div-int/lit8 v13, v20, 0xa

    .line 3564
    .local v13, "ms":I
    const-string/jumbo v20, "%02d:%02d.%02d"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x3c

    div-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide/16 v26, 0x3c

    rem-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 3565
    .local v16, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastTimeString:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastTimeString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 3566
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastTypingSendTime:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-eqz v20, :cond_4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x5

    rem-long v20, v20, v22

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_4

    .line 3567
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastTypingSendTime:J

    .line 3568
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_7

    const/16 v20, 0x7

    :goto_1
    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    move/from16 v3, v20

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V

    .line 3570
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 3571
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordTimeText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3574
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 3575
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-object/from16 v21, v0

    const/16 v20, 0x1

    aget-object v20, p2, v20

    check-cast v20, Ljava/lang/Double;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setAmplitude(D)V

    .line 3577
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_1

    const-wide/32 v20, 0xe86c

    cmp-long v20, v18, v20

    if-ltz v20, :cond_1

    .line 3578
    const/high16 v20, -0x40800000    # -1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->startedDraggingX:F

    .line 3579
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-interface/range {v20 .. v21}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(I)V

    goto/16 :goto_0

    .line 3568
    :cond_7
    const/16 v20, 0x1

    goto :goto_1

    .line 3581
    .end local v13    # "ms":I
    .end local v16    # "str":Ljava/lang/String;
    .end local v17    # "time":Ljava/lang/Long;
    .end local v18    # "t":J
    :cond_8
    sget v20, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 3582
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/Components/EditTextCaption;->isFocused()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 3583
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto/16 :goto_0

    .line 3585
    :cond_9
    sget v20, Lorg/telegram/messenger/NotificationCenter;->recordStartError:I

    move/from16 v0, p1

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    sget v20, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 3586
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudioVideo:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 3587
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    move-wide/from16 v22, v0

    const/16 v21, 0x2

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move/from16 v3, v21

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V

    .line 3588
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudioVideo:Z

    .line 3589
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordIntefrace()V

    .line 3591
    :cond_b
    sget v20, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 3592
    const/16 v20, 0x0

    aget-object v15, p2, v20

    check-cast v15, Ljava/lang/Integer;

    .line 3593
    .local v15, "reason":Ljava/lang/Integer;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 3594
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/Components/VideoTimelineView;->setVisibility(I)V

    .line 3595
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioBackground:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 3596
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioTimeTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3597
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPlayButton:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3598
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->setVisibility(I)V

    .line 3599
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual/range {v20 .. v21}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3600
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 3601
    :cond_c
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    goto/16 :goto_0

    .line 3611
    .end local v15    # "reason":Ljava/lang/Integer;
    :cond_d
    sget v20, Lorg/telegram/messenger/NotificationCenter;->recordStarted:I

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 3612
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudioVideo:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 3613
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudioVideo:Z

    .line 3614
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordIntefrace()V

    goto/16 :goto_0

    .line 3616
    :cond_e
    sget v20, Lorg/telegram/messenger/NotificationCenter;->audioDidSent:I

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    .line 3617
    const/16 v20, 0x0

    aget-object v8, p2, v20

    .line 3618
    .local v8, "audio":Ljava/lang/Object;
    instance-of v0, v8, Lorg/telegram/messenger/VideoEditedInfo;

    move/from16 v20, v0

    if-eqz v20, :cond_f

    .line 3619
    check-cast v8, Lorg/telegram/messenger/VideoEditedInfo;

    .end local v8    # "audio":Ljava/lang/Object;
    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoToSendMessageObject:Lorg/telegram/messenger/VideoEditedInfo;

    .line 3621
    const/16 v20, 0x1

    aget-object v20, p2, v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendPath:Ljava/lang/String;

    .line 3623
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendPath:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/Components/VideoTimelineView;->setVideoPath(Ljava/lang/String;)V

    .line 3624
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/Components/VideoTimelineView;->setVisibility(I)V

    .line 3625
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    move-object/from16 v20, v0

    const/high16 v21, 0x447a0000    # 1000.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoToSendMessageObject:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/Components/VideoTimelineView;->setMinProgressDiff(F)V

    .line 3626
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioBackground:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 3627
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioTimeTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3628
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPlayButton:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3629
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->setVisibility(I)V

    .line 3630
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual/range {v20 .. v21}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3631
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3632
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    .line 3633
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(Z)V

    .line 3634
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    goto/16 :goto_0

    .line 3636
    .restart local v8    # "audio":Ljava/lang/Object;
    :cond_f
    const/16 v20, 0x0

    aget-object v20, p2, v20

    check-cast v20, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3637
    const/16 v20, 0x1

    aget-object v20, p2, v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendPath:Ljava/lang/String;

    .line 3638
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v20, v0

    if-eqz v20, :cond_16

    .line 3639
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 3643
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/Components/VideoTimelineView;->setVisibility(I)V

    .line 3644
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioBackground:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 3645
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioTimeTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3646
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPlayButton:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3647
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->setVisibility(I)V

    .line 3649
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 3650
    .local v11, "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v11, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    .line 3651
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v11, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    .line 3652
    new-instance v20, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct/range {v20 .. v20}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v20

    iput-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 3653
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v20, v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v21

    move/from16 v0, v21

    iput v0, v11, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 3654
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v11, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    .line 3655
    const-string/jumbo v20, "-1"

    move-object/from16 v0, v20

    iput-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    .line 3656
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendPath:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_message;->attachPath:Ljava/lang/String;

    .line 3657
    new-instance v20, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct/range {v20 .. v20}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    move-object/from16 v0, v20

    iput-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 3658
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    move/from16 v21, v0

    or-int/lit8 v21, v21, 0x3

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 3659
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 3660
    iget v0, v11, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    move/from16 v20, v0

    move/from16 v0, v20

    or-int/lit16 v0, v0, 0x300

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v11, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 3661
    new-instance v20, Lorg/telegram/messenger/MessageObject;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v11, v1, v2}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 3663
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual/range {v20 .. v21}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3664
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3665
    const/4 v9, 0x0

    .line 3666
    .local v9, "duration":I
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_10

    .line 3667
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 3668
    .local v7, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    move/from16 v20, v0

    if-eqz v20, :cond_14

    .line 3669
    iget v9, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    .line 3674
    .end local v7    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_10
    const/4 v6, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_13

    .line 3675
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 3676
    .restart local v7    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v0, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    move/from16 v20, v0

    if-eqz v20, :cond_15

    .line 3677
    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-nez v20, :cond_12

    .line 3678
    :cond_11
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendPath:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/messenger/MediaController;->getWaveform(Ljava/lang/String;)[B

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    .line 3680
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    move-object/from16 v20, v0

    iget-object v0, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->setWaveform([B)V

    .line 3684
    .end local v7    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioTimeTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const-string/jumbo v21, "%d:%02d"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    div-int/lit8 v24, v9, 0x3c

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    rem-int/lit8 v24, v9, 0x3c

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3685
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    .line 3686
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(Z)V

    .line 3687
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    goto/16 :goto_0

    .line 3666
    .restart local v7    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 3674
    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 3689
    .end local v6    # "a":I
    .end local v7    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v9    # "duration":I
    .end local v11    # "message":Lorg/telegram/tgnet/TLRPC$TL_message;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 3690
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3694
    .end local v8    # "audio":Ljava/lang/Object;
    :cond_17
    sget v20, Lorg/telegram/messenger/NotificationCenter;->audioRouteChanged:I

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    .line 3695
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 3696
    const/16 v20, 0x0

    aget-object v20, p2, v20

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 3697
    .local v10, "frontSpeaker":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    if-eqz v10, :cond_18

    const/16 v20, 0x0

    :goto_4
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    goto/16 :goto_0

    :cond_18
    const/high16 v20, -0x80000000

    goto :goto_4

    .line 3699
    .end local v10    # "frontSpeaker":Z
    :cond_19
    sget v20, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_1a

    .line 3700
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 3701
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPlayButton:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->playDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3702
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->setProgress(F)V

    goto/16 :goto_0

    .line 3704
    :cond_1a
    sget v20, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_1b

    .line 3705
    const/16 v20, 0x0

    aget-object v12, p2, v20

    check-cast v12, Ljava/lang/Integer;

    .line 3706
    .local v12, "mid":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 3707
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v14

    .line 3708
    .local v14, "player":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v20, v0

    iget v0, v14, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 3709
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v20, v0

    iget v0, v14, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 3710
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->isDragging()Z

    move-result v20

    if-nez v20, :cond_1

    .line 3711
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioSeekBar:Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lorg/telegram/ui/Components/ChatActivityEnterView$SeekBarWaveformView;->setProgress(F)V

    goto/16 :goto_0

    .line 3714
    .end local v12    # "mid":Ljava/lang/Integer;
    .end local v14    # "player":Lorg/telegram/messenger/MessageObject;
    :cond_1b
    sget v20, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 3715
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 3716
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->invalidate()V

    goto/16 :goto_0
.end method

.method public doneEditingMessage()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2093
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    .line 2094
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageEditEnd(Z)V

    .line 2095
    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showEditDoneProgress(ZZ)V

    .line 2096
    new-array v7, v1, [Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v0

    aput-object v0, v7, v2

    .line 2097
    .local v7, "message":[Ljava/lang/CharSequence;
    invoke-static {v7}, Lorg/telegram/messenger/query/MessagesQuery;->getEntities([Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2098
    .local v5, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    aget-object v2, v7, v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageWebPageSearch:Z

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    new-instance v6, Lorg/telegram/ui/Components/ChatActivityEnterView$30;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$30;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->editMessage(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;Ljava/lang/Runnable;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageReqId:I

    .line 2106
    .end local v5    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    .end local v7    # "message":[Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    const/4 v4, 0x0

    .line 1491
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-ne p2, v1, :cond_0

    .line 1492
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1493
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v4, v4, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1495
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 1496
    .local v0, "result":Z
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-ne p2, v1, :cond_1

    .line 1497
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1499
    :cond_1
    return v0
.end method

.method public getAttachButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 2756
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBotButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 2760
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getCursorPosition()I
    .locals 1

    .prologue
    .line 2796
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-nez v0, :cond_0

    .line 2797
    const/4 v0, 0x0

    .line 2799
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->getSelectionStart()I

    move-result v0

    goto :goto_0
.end method

.method public getEditingMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .prologue
    .line 3435
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getEmojiButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 2764
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getEmojiPadding()I
    .locals 1

    .prologue
    .line 3548
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiPadding:I

    return v0
.end method

.method public getEmojiView()Lorg/telegram/ui/Components/EmojiView;
    .locals 1

    .prologue
    .line 2772
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    return-object v0
.end method

.method public getFieldText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2866
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2867
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2869
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectionLength()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2803
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-nez v2, :cond_0

    .line 2811
    :goto_0
    return v1

    .line 2807
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextCaption;->getSelectionEnd()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextCaption;->getSelectionStart()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    sub-int v1, v2, v1

    goto :goto_0

    .line 2808
    :catch_0
    move-exception v0

    .line 2809
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getSendButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 2768
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public hasAudioToSend()Z
    .locals 1

    .prologue
    .line 3443
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSendMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoToSendMessageObject:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 1513
    const/4 v0, 0x0

    return v0
.end method

.method public hasRecordVideo()Z
    .locals 1

    .prologue
    .line 1972
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasRecordVideo:Z

    return v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 2862
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hidePopup(Z)V
    .locals 7
    .param p1, "byBackButton"    # Z

    .prologue
    const/4 v6, 0x0

    .line 3399
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3400
    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_0

    .line 3401
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->mainconfig:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3402
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hidekeyboard_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3404
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    invoke-direct {p0, v6, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showPopup(II)V

    .line 3405
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->removeGifFromInputField()V

    .line 3407
    :cond_1
    return-void
.end method

.method public hideTopView(Z)V
    .locals 7
    .param p1, "animated"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1765
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topViewShowed:Z

    if-nez v0, :cond_1

    .line 1804
    :cond_0
    :goto_0
    return-void

    .line 1769
    :cond_1
    iput-boolean v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topViewShowed:Z

    .line 1770
    iput-boolean v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->needShowTopView:Z

    .line 1771
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowShowTopView:Z

    if-eqz v0, :cond_0

    .line 1772
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 1773
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1774
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    .line 1776
    :cond_2
    if-eqz p1, :cond_3

    .line 1777
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    .line 1778
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    const-string/jumbo v3, "translationY"

    new-array v4, v4, [F

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1779
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$28;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$28;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1796
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1797
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1799
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1800
    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->resizeForTopView(Z)V

    .line 1801
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method public isEditingCaption()Z
    .locals 1

    .prologue
    .line 3439
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingCaption:Z

    return v0
.end method

.method public isEditingMessage()Z
    .locals 1

    .prologue
    .line 3431
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInVideoMode()Z
    .locals 1

    .prologue
    .line 1968
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoSendButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyboardVisible()Z
    .locals 1

    .prologue
    .line 3459
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    return v0
.end method

.method public isMessageWebPageSearchEnabled()Z
    .locals 1

    .prologue
    .line 2018
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageWebPageSearch:Z

    return v0
.end method

.method public isPopupShowing()Z
    .locals 1

    .prologue
    .line 3455
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BotKeyboardView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPopupView(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3071
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecordCircle(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3075
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecordLocked()Z
    .locals 1

    .prologue
    .line 1567
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudioVideo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordCircle:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecordingAudioVideo()Z
    .locals 1

    .prologue
    .line 1563
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudioVideo:Z

    return v0
.end method

.method public isTopViewVisible()Z
    .locals 1

    .prologue
    .line 1807
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1850
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->recordStarted:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1851
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->recordStartError:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1852
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1853
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->recordProgressChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1854
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1855
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioDidSent:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1856
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1857
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioRouteChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1858
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1859
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1860
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1861
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v1, :cond_0

    .line 1862
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView;->onDestroy()V

    .line 1864
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 1866
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1867
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->wakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1872
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v1, :cond_2

    .line 1873
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;)V

    .line 1875
    :cond_2
    return-void

    .line 1868
    :catch_0
    move-exception v0

    .line 1869
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v0, 0x0

    .line 1504
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    float-to-int v7, v1

    .line 1505
    .local v7, "top":I
    :goto_0
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int v6, v7, v1

    .line 1506
    .local v6, "bottom":I
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v0, v7, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1507
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1508
    const/4 v1, 0x0

    int-to-float v2, v6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_composeBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1509
    return-void

    .end local v6    # "bottom":I
    .end local v7    # "top":I
    :cond_0
    move v7, v0

    .line 1504
    goto :goto_0
.end method

.method public onEditTimeExpired()V
    .locals 2

    .prologue
    .line 1687
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1688
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2600
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingAudioVideo:Z

    if-eqz v0, :cond_0

    .line 2601
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2603
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1891
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPaused:Z

    .line 1892
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    .line 1893
    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v3, 0x0

    .line 3722
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 3723
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->pendingLocationButton:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    if-eqz v0, :cond_1

    .line 3724
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 3725
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->pendingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->pendingLocationButton:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/SendMessagesHelper;->sendCurrentLocation(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V

    .line 3727
    :cond_0
    iput-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->pendingLocationButton:Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .line 3728
    iput-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->pendingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 3731
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1896
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPaused:Z

    .line 1897
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->showKeyboardOnResume:Z

    if-eqz v0, :cond_0

    .line 1898
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->showKeyboardOnResume:Z

    .line 1899
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->requestFocus()Z

    .line 1900
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 1901
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_0

    .line 1902
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->waitingForKeyboardOpen:Z

    .line 1903
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1904
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1907
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x0

    .line 3471
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 3472
    if-eq p1, p3, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpanded:Z

    if-eqz v0, :cond_0

    .line 3473
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setStickersExpanded(ZZ)V

    .line 3474
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoTimelineView;->clearFrames()V

    .line 3475
    return-void
.end method

.method public onSizeChanged(IZ)V
    .locals 12
    .param p1, "height"    # I
    .param p2, "isWidthGreater"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3479
    const/high16 v9, 0x42480000    # 50.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    if-le p1, v9, :cond_0

    iget-boolean v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-eqz v9, :cond_0

    sget-boolean v9, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v9, :cond_0

    .line 3480
    if-eqz p2, :cond_6

    .line 3481
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    .line 3482
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "emoji"

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string/jumbo v10, "kbd_height_land3"

    iget v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3489
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3490
    if-eqz p2, :cond_7

    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    .line 3492
    .local v2, "newHeight":I
    :goto_1
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "plusconfig"

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 3493
    .local v5, "plusPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v9, "emojiPopupSize"

    const/16 v10, 0x3c

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3494
    .local v4, "pSize":I
    add-int/lit8 v9, v4, -0x28

    mul-int/lit8 v9, v9, 0xa

    int-to-float v9, v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    .line 3495
    .local v6, "popupSize":I
    if-ge v6, v2, :cond_8

    .line 3497
    :goto_2
    iget v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    if-ne v9, v7, :cond_1

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/BotKeyboardView;->isFullSize()Z

    move-result v9

    if-nez v9, :cond_1

    .line 3498
    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/BotKeyboardView;->getKeyboardHeight()I

    move-result v9

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3501
    :cond_1
    const/4 v0, 0x0

    .line 3502
    .local v0, "currentView":Landroid/view/View;
    iget v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    if-nez v9, :cond_9

    .line 3503
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 3507
    :cond_2
    :goto_3
    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    if-eqz v9, :cond_3

    .line 3508
    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Components/BotKeyboardView;->setPanelHeight(I)V

    .line 3511
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3512
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v9, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    if-ne v9, v10, :cond_4

    iget v9, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v9, v2, :cond_5

    :cond_4
    iget-boolean v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->stickersExpanded:Z

    if-nez v9, :cond_5

    .line 3513
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3514
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3515
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3516
    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v9, :cond_5

    .line 3517
    iget v9, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiPadding:I

    .line 3518
    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->requestLayout()V

    .line 3519
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onWindowSizeChanged()V

    .line 3524
    .end local v0    # "currentView":Landroid/view/View;
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "newHeight":I
    .end local v4    # "pSize":I
    .end local v5    # "plusPreferences":Landroid/content/SharedPreferences;
    .end local v6    # "popupSize":I
    :cond_5
    iget v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastSizeChangeValue1:I

    if-ne v9, p1, :cond_a

    iget-boolean v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastSizeChangeValue2:Z

    if-ne v9, p2, :cond_a

    .line 3525
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onWindowSizeChanged()V

    .line 3545
    :goto_4
    return-void

    .line 3484
    :cond_6
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    .line 3485
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "emoji"

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string/jumbo v10, "kbd_height"

    iget v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 3490
    :cond_7
    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    goto/16 :goto_1

    .restart local v2    # "newHeight":I
    .restart local v4    # "pSize":I
    .restart local v5    # "plusPreferences":Landroid/content/SharedPreferences;
    .restart local v6    # "popupSize":I
    :cond_8
    move v2, v6

    .line 3495
    goto/16 :goto_2

    .line 3504
    .restart local v0    # "currentView":Landroid/view/View;
    :cond_9
    iget v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    if-ne v9, v7, :cond_2

    .line 3505
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    goto :goto_3

    .line 3528
    .end local v0    # "currentView":Landroid/view/View;
    .end local v2    # "newHeight":I
    .end local v4    # "pSize":I
    .end local v5    # "plusPreferences":Landroid/content/SharedPreferences;
    .end local v6    # "popupSize":I
    :cond_a
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastSizeChangeValue1:I

    .line 3529
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->lastSizeChangeValue2:Z

    .line 3531
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    .line 3532
    .local v3, "oldValue":Z
    if-lez p1, :cond_e

    :goto_5
    iput-boolean v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    .line 3533
    iget-boolean v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-eqz v7, :cond_b

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 3534
    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    invoke-direct {p0, v8, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showPopup(II)V

    .line 3536
    :cond_b
    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiPadding:I

    if-eqz v7, :cond_c

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-nez v7, :cond_c

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-eq v7, v3, :cond_c

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v7

    if-nez v7, :cond_c

    .line 3537
    iput v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiPadding:I

    .line 3538
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->requestLayout()V

    .line 3540
    :cond_c
    iget-boolean v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-eqz v7, :cond_d

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->waitingForKeyboardOpen:Z

    if-eqz v7, :cond_d

    .line 3541
    iput-boolean v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->waitingForKeyboardOpen:Z

    .line 3542
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardRunnable:Ljava/lang/Runnable;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3544
    :cond_d
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onWindowSizeChanged()V

    goto :goto_4

    :cond_e
    move v7, v8

    .line 3532
    goto :goto_5
.end method

.method public onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 4
    .param p1, "sticker"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 3273
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, p1, v2, v3, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendSticker(Lorg/telegram/tgnet/TLRPC$Document;JLorg/telegram/messenger/MessageObject;)V

    .line 3274
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v0, :cond_0

    .line 3275
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;)V

    .line 3277
    :cond_0
    return-void
.end method

.method public openKeyboard()V
    .locals 1

    .prologue
    .line 3447
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 3448
    return-void
.end method

.method public processSendingText(Ljava/lang/CharSequence;)Z
    .locals 13
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2109
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getTrimmedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2110
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2111
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x45800000    # 4096.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v11, v0

    .line 2112
    .local v11, "count":I
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_0
    if-ge v10, v11, :cond_0

    .line 2113
    const/4 v0, 0x1

    new-array v12, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    mul-int/lit16 v1, v10, 0x1000

    add-int/lit8 v2, v10, 0x1

    mul-int/lit16 v2, v2, 0x1000

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v12, v0

    .line 2114
    .local v12, "message":[Ljava/lang/CharSequence;
    invoke-static {v12}, Lorg/telegram/messenger/query/MessagesQuery;->getEntities([Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v7

    .line 2115
    .local v7, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v12, v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageWebPageSearch:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 2112
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2117
    .end local v7    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    .end local v12    # "message":[Ljava/lang/CharSequence;
    :cond_0
    const/4 v0, 0x1

    .line 2119
    .end local v10    # "a":I
    .end local v11    # "count":I
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public replaceWithText(IILjava/lang/CharSequence;)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "len"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2816
    :try_start_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2817
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    add-int v2, p1, p2

    invoke-virtual {v0, p1, v2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2818
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    .line 2819
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2823
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    :goto_0
    return-void

    .line 2820
    :catch_0
    move-exception v1

    .line 2821
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setAllowStickersAndGifs(ZZ)V
    .locals 2
    .param p1, "value"    # Z
    .param p2, "value2"    # Z

    .prologue
    .line 1616
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowStickers:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowGifs:Z

    if-eq v0, p2, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    if-eqz v0, :cond_2

    .line 1617
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1618
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(Z)V

    .line 1620
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->removeView(Landroid/view/View;)V

    .line 1621
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    .line 1623
    :cond_2
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowStickers:Z

    .line 1624
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowGifs:Z

    .line 1625
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setEmojiButtonImage()V

    .line 1626
    return-void
.end method

.method public setBotsCount(IZ)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "hasCommands"    # Z

    .prologue
    .line 2904
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCount:I

    .line 2905
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasBotCommands:Z

    if-eq v0, p2, :cond_0

    .line 2906
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasBotCommands:Z

    .line 2907
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateBotButton()V

    .line 2909
    :cond_0
    return-void
.end method

.method public setButtons(Lorg/telegram/messenger/MessageObject;)V
    .locals 1
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 2912
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setButtons(Lorg/telegram/messenger/MessageObject;Z)V

    .line 2913
    return-void
.end method

.method public setButtons(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 8
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "openKeyboard"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2916
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eq v2, p1, :cond_1

    .line 2917
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2973
    :cond_0
    :goto_0
    return-void

    .line 2920
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eq v2, p1, :cond_0

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_3

    if-eqz p1, :cond_0

    .line 2923
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    if-nez v2, :cond_4

    .line 2924
    new-instance v2, Lorg/telegram/ui/Components/BotKeyboardView;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v6}, Lorg/telegram/ui/Components/BotKeyboardView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    .line 2925
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/BotKeyboardView;->setVisibility(I)V

    .line 2926
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    new-instance v6, Lorg/telegram/ui/Components/ChatActivityEnterView$38;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$38;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/BotKeyboardView;->setDelegate(Lorg/telegram/ui/Components/BotKeyboardView$BotKeyboardViewDelegate;)V

    .line 2944
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sizeNotifierLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->addView(Landroid/view/View;)V

    .line 2946
    :cond_4
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2947
    if-eqz p1, :cond_8

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    if-eqz v2, :cond_8

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    :goto_1
    iput-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    .line 2949
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-le v2, v7, :cond_9

    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeightLand:I

    :goto_2
    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/BotKeyboardView;->setPanelHeight(I)V

    .line 2950
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botKeyboardView:Lorg/telegram/ui/Components/BotKeyboardView;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    if-eqz v6, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    :cond_5
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BotKeyboardView;->setButtons(Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;)V

    .line 2951
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    if-eqz v2, :cond_b

    .line 2952
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->mainconfig:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2953
    .local v1, "preferences":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hidekeyboard_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v2, v3, :cond_a

    move v0, v4

    .line 2954
    .local v0, "keyboardHidden":Z
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botReplyMarkup:Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardMarkup;->single_use:Z

    if-eqz v2, :cond_6

    .line 2955
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "answered_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 2959
    :cond_6
    if-nez v0, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextCaption;->length()I

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2961
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->hideBotKeyboard:Z

    if-nez v2, :cond_7

    invoke-direct {p0, v4, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showPopup(II)V

    .line 2972
    .end local v0    # "keyboardHidden":Z
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_7
    :goto_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateBotButton()V

    goto/16 :goto_0

    :cond_8
    move-object v2, v3

    .line 2947
    goto/16 :goto_1

    .line 2949
    :cond_9
    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardHeight:I

    goto/16 :goto_2

    .restart local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_a
    move v0, v5

    .line 2953
    goto :goto_3

    .line 2964
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    if-ne v2, v4, :cond_7

    .line 2965
    if-eqz p2, :cond_c

    .line 2966
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboardInternal()V

    goto :goto_4

    .line 2968
    :cond_c
    invoke-direct {p0, v5, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showPopup(II)V

    goto :goto_4
.end method

.method public setCaption(Ljava/lang/String;)V
    .locals 1
    .param p1, "caption"    # Ljava/lang/String;

    .prologue
    .line 1593
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz v0, :cond_0

    .line 1594
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->setCaption(Ljava/lang/String;)V

    .line 1595
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    .line 1597
    :cond_0
    return-void
.end method

.method public setCommand(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZZ)V
    .locals 12
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "longPress"    # Z
    .param p4, "username"    # Z

    .prologue
    .line 2611
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2640
    :cond_0
    :goto_0
    return-void

    .line 2614
    :cond_1
    if-eqz p3, :cond_6

    .line 2615
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2616
    .local v10, "text":Ljava/lang/String;
    if-eqz p1, :cond_4

    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v0, v0

    if-gez v0, :cond_4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 2617
    .local v11, "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-eqz p4, :cond_5

    :cond_2
    if-eqz v11, :cond_5

    iget-boolean v0, v11, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%s@%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "^/[a-zA-Z@\\d_]{1,255}(\\s|$)"

    const-string/jumbo v2, ""

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2622
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->ignoreTextChange:Z

    .line 2623
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    .line 2624
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->setSelection(I)V

    .line 2625
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->ignoreTextChange:Z

    .line 2626
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v0, :cond_3

    .line 2627
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onTextChanged(Ljava/lang/CharSequence;Z)V

    .line 2629
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentPopupContentType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2630
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    goto/16 :goto_0

    .line 2616
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 2620
    .restart local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "^/[a-zA-Z@\\d_]{1,255}(\\s|$)"

    const-string/jumbo v2, ""

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 2633
    .end local v10    # "text":Ljava/lang/String;
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_6
    if-eqz p1, :cond_8

    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v0, v0

    if-gez v0, :cond_8

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 2634
    .restart local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_3
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    if-eqz p4, :cond_9

    :cond_7
    if-eqz v11, :cond_9

    iget-boolean v0, v11, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v0, :cond_9

    const-string/jumbo v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2635
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%s@%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 2633
    .end local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_8
    const/4 v11, 0x0

    goto :goto_3

    .line 2637
    .restart local v11    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_9
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V
    .locals 0
    .param p1, "chatActivityEnterViewDelegate"    # Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    .prologue
    .line 2607
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    .line 2608
    return-void
.end method

.method public setDialogId(J)V
    .locals 11
    .param p1, "id"    # J

    .prologue
    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1910
    iput-wide p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    .line 1911
    iget-wide v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v2, v8

    .line 1912
    .local v2, "lower_id":I
    iget-wide v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    const/16 v3, 0x20

    shr-long/2addr v8, v3

    long-to-int v1, v8

    .line 1913
    .local v1, "high_id":I
    iget-wide v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v3, v8

    if-gez v3, :cond_4

    .line 1914
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    long-to-int v7, v8

    neg-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1915
    .local v0, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->Notifications:Ljava/lang/String;

    invoke-virtual {v3, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->silent:Z

    .line 1916
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v3, :cond_0

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->post_messages:Z

    if-eqz v3, :cond_5

    :cond_0
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v3, :cond_5

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->canWriteToChannel:Z

    .line 1917
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    .line 1918
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->canWriteToChannel:Z

    if-eqz v3, :cond_6

    move v3, v5

    :goto_1
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1919
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->silent:Z

    if-eqz v3, :cond_7

    const v3, 0x7f0201eb

    :goto_2
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1920
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_8

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->notifyButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_8

    :cond_2
    const/high16 v3, 0x42400000    # 48.0f

    :goto_3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 1922
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_4

    .line 1923
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_9

    :goto_4
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldRight(I)V

    .line 1926
    .end local v0    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkRoundVideo()V

    .line 1927
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldHint()V

    .line 1928
    return-void

    .restart local v0    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_5
    move v3, v5

    .line 1916
    goto :goto_0

    :cond_6
    move v3, v6

    .line 1918
    goto :goto_1

    .line 1919
    :cond_7
    const v3, 0x7f0201ec

    goto :goto_2

    .line 1920
    :cond_8
    const/high16 v3, 0x42c00000    # 96.0f

    goto :goto_3

    :cond_9
    move v4, v5

    .line 1923
    goto :goto_4
.end method

.method public setEditingMessageObject(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 14
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "caption"    # Z

    .prologue
    .line 2643
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioToSend:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v10, :cond_0

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->videoToSendMessageObject:Lorg/telegram/messenger/VideoEditedInfo;

    if-nez v10, :cond_0

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v10, p1, :cond_1

    .line 2753
    :cond_0
    :goto_0
    return-void

    .line 2646
    :cond_1
    iget v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageReqId:I

    if-eqz v10, :cond_2

    .line 2647
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    iget v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageReqId:I

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 2648
    const/4 v10, 0x0

    iput v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageReqId:I

    .line 2650
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2651
    move/from16 v0, p2

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingCaption:Z

    .line 2652
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v10, :cond_10

    .line 2653
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;

    if-eqz v10, :cond_3

    .line 2654
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2655
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;

    .line 2657
    :cond_3
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonContainer:Landroid/widget/FrameLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2658
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showEditDoneProgress(ZZ)V

    .line 2660
    const/4 v10, 0x1

    new-array v6, v10, [Landroid/text/InputFilter;

    .line 2661
    .local v6, "inputFilters":[Landroid/text/InputFilter;
    if-eqz p2, :cond_5

    .line 2662
    const/4 v10, 0x0

    new-instance v11, Landroid/text/InputFilter$LengthFilter;

    const/16 v12, 0xc8

    invoke-direct {v11, v12}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v11, v6, v10

    .line 2663
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v10, v10, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v10, :cond_4

    .line 2664
    new-instance v10, Landroid/text/SpannableStringBuilder;

    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v11, v11, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/EditTextCaption;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {v11}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v11

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 2716
    :goto_1
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v10, v6}, Lorg/telegram/ui/Components/EditTextCaption;->setFilters([Landroid/text/InputFilter;)V

    .line 2717
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    .line 2718
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/EditTextCaption;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 2719
    .local v7, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v10, 0x40800000    # 4.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2720
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v10, v7}, Lorg/telegram/ui/Components/EditTextCaption;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2721
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2722
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2723
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2724
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2725
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2752
    .end local v6    # "inputFilters":[Landroid/text/InputFilter;
    .end local v7    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldHint()V

    goto/16 :goto_0

    .line 2666
    .restart local v6    # "inputFilters":[Landroid/text/InputFilter;
    :cond_4
    const-string/jumbo v10, ""

    invoke-virtual {p0, v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2669
    :cond_5
    const/4 v10, 0x0

    new-instance v11, Landroid/text/InputFilter$LengthFilter;

    const/16 v12, 0x1000

    invoke-direct {v11, v12}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v11, v6, v10

    .line 2670
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v10, v10, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    if-eqz v10, :cond_f

    .line 2671
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v10, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v10, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 2672
    .local v4, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    invoke-static {v4}, Lorg/telegram/messenger/query/MessagesQuery;->sortEntities(Ljava/util/ArrayList;)V

    .line 2673
    new-instance v9, Landroid/text/SpannableStringBuilder;

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v10, v10, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-direct {v9, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2674
    .local v9, "stringBuilder":Landroid/text/SpannableStringBuilder;
    const/4 v10, 0x0

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const-class v12, Ljava/lang/Object;

    invoke-virtual {v9, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    .line 2675
    .local v8, "spansToRemove":[Ljava/lang/Object;
    if-eqz v8, :cond_6

    array-length v10, v8

    if-lez v10, :cond_6

    .line 2676
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_3
    array-length v10, v8

    if-ge v1, v10, :cond_6

    .line 2677
    aget-object v10, v8, v1

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 2676
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2680
    .end local v1    # "a":I
    :cond_6
    if-eqz v4, :cond_a

    .line 2681
    const/4 v2, 0x0

    .line 2683
    .local v2, "addToOffset":I
    const/4 v1, 0x0

    .restart local v1    # "a":I
    :goto_4
    :try_start_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_a

    .line 2684
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 2685
    .local v5, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    iget v10, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v11, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v10, v11

    add-int/2addr v10, v2

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    if-le v10, v11, :cond_8

    .line 2683
    :cond_7
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2688
    :cond_8
    instance-of v10, v5, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    if-eqz v10, :cond_b

    .line 2689
    iget v10, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v11, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v10, v11

    add-int/2addr v10, v2

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    if-ge v10, v11, :cond_9

    iget v10, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v11, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v10, v11

    add-int/2addr v10, v2

    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-ne v10, v11, :cond_9

    .line 2690
    iget v10, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 2692
    :cond_9
    new-instance v11, Lorg/telegram/ui/Components/URLSpanUserMention;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    move-object v10, v0

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:I

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x1

    invoke-direct {v11, v10, v12}, Lorg/telegram/ui/Components/URLSpanUserMention;-><init>(Ljava/lang/String;Z)V

    iget v10, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    add-int/2addr v10, v2

    iget v12, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v13, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v12, v13

    add-int/2addr v12, v2

    const/16 v13, 0x21

    invoke-virtual {v9, v11, v10, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 2707
    .end local v5    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :catch_0
    move-exception v3

    .line 2708
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2711
    .end local v1    # "a":I
    .end local v2    # "addToOffset":I
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_a
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/EditTextCaption;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    const/high16 v11, 0x41a00000    # 20.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2693
    .restart local v1    # "a":I
    .restart local v2    # "addToOffset":I
    .restart local v5    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_b
    :try_start_1
    instance-of v10, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;

    if-eqz v10, :cond_c

    .line 2694
    iget v10, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v11, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v10, v11

    add-int/2addr v10, v2

    const-string/jumbo v11, "`"

    invoke-virtual {v9, v10, v11}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2695
    iget v10, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    add-int/2addr v10, v2

    const-string/jumbo v11, "`"

    invoke-virtual {v9, v10, v11}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2696
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_5

    .line 2697
    :cond_c
    instance-of v10, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;

    if-eqz v10, :cond_d

    .line 2698
    iget v10, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v11, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v10, v11

    add-int/2addr v10, v2

    const-string/jumbo v11, "```"

    invoke-virtual {v9, v10, v11}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2699
    iget v10, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    add-int/2addr v10, v2

    const-string/jumbo v11, "```"

    invoke-virtual {v9, v10, v11}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2700
    add-int/lit8 v2, v2, 0x6

    goto/16 :goto_5

    .line 2701
    :cond_d
    instance-of v10, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBold;

    if-eqz v10, :cond_e

    .line 2702
    new-instance v10, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string/jumbo v11, "fonts/rmedium.ttf"

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    iget v11, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    add-int/2addr v11, v2

    iget v12, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v13, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v12, v13

    add-int/2addr v12, v2

    const/16 v13, 0x21

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_5

    .line 2703
    :cond_e
    instance-of v10, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityItalic;

    if-eqz v10, :cond_7

    .line 2704
    new-instance v10, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string/jumbo v11, "fonts/ritalic.ttf"

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    iget v11, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    add-int/2addr v11, v2

    iget v12, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v13, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v12, v13

    add-int/2addr v12, v2

    const/16 v13, 0x21

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 2713
    .end local v1    # "a":I
    .end local v2    # "addToOffset":I
    .end local v4    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    .end local v5    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .end local v8    # "spansToRemove":[Ljava/lang/Object;
    .end local v9    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_f
    const-string/jumbo v10, ""

    invoke-virtual {p0, v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2727
    .end local v6    # "inputFilters":[Landroid/text/InputFilter;
    :cond_10
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonContainer:Landroid/widget/FrameLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2728
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const/4 v11, 0x0

    new-array v11, v11, [Landroid/text/InputFilter;

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/EditTextCaption;->setFilters([Landroid/text/InputFilter;)V

    .line 2729
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageEditEnd(Z)V

    .line 2730
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2731
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2732
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButtonContainer:Landroid/widget/FrameLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2733
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 2734
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->attachLayout:Landroid/widget/LinearLayout;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2735
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const v11, 0x3dcccccd    # 0.1f

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2736
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const v11, 0x3dcccccd    # 0.1f

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 2737
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2738
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const v11, 0x3dcccccd    # 0.1f

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2739
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const v11, 0x3dcccccd    # 0.1f

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 2740
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2741
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 2742
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 2743
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioVideoButtonContainer:Landroid/widget/FrameLayout;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2744
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->sendButton:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2745
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->cancelBotButton:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2746
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    .line 2747
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getVisibility()I

    move-result v10

    if-nez v10, :cond_11

    .line 2748
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    invoke-interface {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onAttachButtonShow()V

    .line 2750
    :cond_11
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateFieldRight(I)V

    goto/16 :goto_2
.end method

.method public setFieldFocused()V
    .locals 2

    .prologue
    .line 2826
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz v1, :cond_0

    .line 2828
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextCaption;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2833
    :cond_0
    :goto_0
    return-void

    .line 2829
    :catch_0
    move-exception v0

    .line 2830
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setFieldFocused(Z)V
    .locals 4
    .param p1, "focus"    # Z

    .prologue
    .line 2836
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-nez v0, :cond_1

    .line 2859
    :cond_0
    :goto_0
    return-void

    .line 2839
    :cond_1
    if-eqz p1, :cond_2

    .line 2840
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2841
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$37;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$37;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2855
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-nez v0, :cond_0

    .line 2856
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->clearFocus()V

    goto :goto_0
.end method

.method public setFieldText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    .line 2776
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-nez v0, :cond_1

    .line 2786
    :cond_0
    :goto_0
    return-void

    .line 2779
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->ignoreTextChange:Z

    .line 2780
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    .line 2781
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->setSelection(I)V

    .line 2782
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->ignoreTextChange:Z

    .line 2783
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    if-eqz v0, :cond_0

    .line 2784
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onTextChanged(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method public setForceShowSendButton(ZZ)V
    .locals 0
    .param p1, "value"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 1611
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->forceShowSendButton:Z

    .line 1612
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V

    .line 1613
    return-void
.end method

.method public setOpenGifsTabFirst()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1629
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->createEmojiView()V

    .line 1630
    const/4 v0, 0x0

    invoke-static {v0, v1, v1}, Lorg/telegram/messenger/query/StickersQuery;->loadRecents(IZZ)V

    .line 1631
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->emojiView:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->switchToGifRecent()V

    .line 1632
    return-void
.end method

.method public setReplyingMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 3
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v2, 0x0

    .line 1997
    if-eqz p1, :cond_1

    .line 1998
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eq v0, v1, :cond_0

    .line 1999
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2001
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2002
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setButtons(Lorg/telegram/messenger/MessageObject;Z)V

    .line 2010
    :goto_0
    return-void

    .line 2003
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botButtonsMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v0, v1, :cond_2

    .line 2004
    iput-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2005
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setButtons(Lorg/telegram/messenger/MessageObject;Z)V

    .line 2006
    iput-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->botMessageObject:Lorg/telegram/messenger/MessageObject;

    goto :goto_0

    .line 2008
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 2
    .param p1, "start"    # I

    .prologue
    .line 2789
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-nez v0, :cond_0

    .line 2793
    :goto_0
    return-void

    .line 2792
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextCaption;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/EditTextCaption;->setSelection(II)V

    goto :goto_0
.end method

.method public setWebPage(Lorg/telegram/tgnet/TLRPC$WebPage;Z)V
    .locals 0
    .param p1, "webPage"    # Lorg/telegram/tgnet/TLRPC$WebPage;
    .param p2, "searchWebPages"    # Z

    .prologue
    .line 2013
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 2014
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageWebPageSearch:Z

    .line 2015
    return-void
.end method

.method public showContextProgress(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1582
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    if-nez v0, :cond_0

    .line 1590
    :goto_0
    return-void

    .line 1585
    :cond_0
    if-eqz p1, :cond_1

    .line 1586
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->startAnimation()V

    goto :goto_0

    .line 1588
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->stopAnimation()V

    goto :goto_0
.end method

.method public showEditDoneProgress(ZZ)V
    .locals 10
    .param p1, "show"    # Z
    .param p2, "animated"    # Z

    .prologue
    const/4 v9, 0x0

    const v5, 0x3dcccccd    # 0.1f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1691
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1692
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1694
    :cond_0
    if-nez p2, :cond_2

    .line 1695
    if-eqz p1, :cond_1

    .line 1696
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1697
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1698
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1699
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/ContextProgressView;->setScaleX(F)V

    .line 1700
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/ContextProgressView;->setScaleY(F)V

    .line 1701
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/ContextProgressView;->setAlpha(F)V

    .line 1702
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1703
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 1704
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1762
    :goto_0
    return-void

    .line 1706
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/ContextProgressView;->setScaleX(F)V

    .line 1707
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/ContextProgressView;->setScaleY(F)V

    .line 1708
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/ContextProgressView;->setAlpha(F)V

    .line 1709
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1710
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1711
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1712
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1713
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 1714
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_0

    .line 1717
    :cond_2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;

    .line 1718
    if-eqz p1, :cond_3

    .line 1719
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 1720
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1721
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    const-string/jumbo v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 1722
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    const-string/jumbo v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 1723
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 1724
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 1725
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 1726
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 1727
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1721
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1740
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$27;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$27;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1759
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1760
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1729
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1730
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1731
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 1732
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 1733
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonProgress:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 1734
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    const-string/jumbo v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 1735
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    const-string/jumbo v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 1736
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->doneButtonImage:Landroid/widget/ImageView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 1737
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1731
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_1
.end method

.method public showTopView(ZZ)V
    .locals 7
    .param p1, "animated"    # Z
    .param p2, "openKeyboard"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1635
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topViewShowed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1684
    :cond_0
    :goto_0
    return-void

    .line 1638
    :cond_1
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->needShowTopView:Z

    .line 1639
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topViewShowed:Z

    .line 1640
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->allowShowTopView:Z

    if-eqz v0, :cond_0

    .line 1641
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1642
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 1643
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1644
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    .line 1646
    :cond_2
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->resizeForTopView(Z)V

    .line 1647
    if-eqz p1, :cond_6

    .line 1648
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->keyboardVisible:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1649
    :cond_3
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    .line 1650
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    const-string/jumbo v3, "translationY"

    new-array v4, v4, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1651
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$26;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView$26;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1669
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1670
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->currentTopViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1672
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 1673
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->forceShowSendButton:Z

    if-eqz v0, :cond_5

    if-eqz p2, :cond_0

    .line 1674
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    goto :goto_0

    .line 1678
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->topView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 1679
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordedAudioPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView;->forceShowSendButton:Z

    if-eqz v0, :cond_7

    if-eqz p2, :cond_0

    .line 1680
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    goto/16 :goto_0
.end method
