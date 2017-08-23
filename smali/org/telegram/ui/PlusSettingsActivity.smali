.class public Lorg/telegram/ui/PlusSettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PlusSettingsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private chatAlwaysBackToMainRow:I

.field private chatCenterQuickBarBtnRow:I

.field private chatDirectShareFavsFirst:I

.field private chatDirectShareReplies:I

.field private chatDirectShareToMenu:I

.field private chatDoNotCloseQuickBarRow:I

.field private chatDoNotHideStickersTabRow:I

.field private chatDrawSingleBigEmojiRow:I

.field private chatHideBotKeyboardRow:I

.field private chatHideInstantCameraRow:I

.field private chatHideJoinedGroupRow:I

.field private chatHideLeftGroupRow:I

.field private chatHideQuickBarOnScrollRow:I

.field private chatMarkdownRow:I

.field private chatPhotoQualityRow:I

.field private chatPhotoViewerHideStatusBarRow:I

.field private chatSaveToCloudQuoteRow:I

.field private chatSearchUserOnTwitterRow:I

.field private chatShowDateToastRow:I

.field private chatShowDirectShareBtn:I

.field private chatShowEditedMarkRow:I

.field private chatShowMembersQuickBarRow:I

.field private chatShowPhotoQualityBarRow:I

.field private chatShowQuickBarRow:I

.field private chatShowUserBioRow:I

.field private chatSwipeToReplyRow:I

.field private chatVerticalQuickBarRow:I

.field private chatsToLoadRow:I

.field private dialogsDisableTabsAnimationCheckRow:I

.field private dialogsDisableTabsScrollingRow:I

.field private dialogsDoNotChangeHeaderTitleRow:I

.field private dialogsExpandTabsRow:I

.field private dialogsGroupPicClickRow:I

.field private dialogsHideSelectedTabIndicator:I

.field private dialogsHideTabsCheckRow:I

.field private dialogsHideTabsCounters:I

.field private dialogsInfiniteTabsSwipe:I

.field private dialogsLimitTabsCountersRow:I

.field private dialogsManageTabsRow:I

.field private dialogsPicClickRow:I

.field private dialogsSectionRow:I

.field private dialogsSectionRow2:I

.field private dialogsShowAllInAdminTabDetailRow:I

.field private dialogsShowAllInAdminTabRow:I

.field private dialogsTabsCountersCountChats:I

.field private dialogsTabsCountersCountNotMuted:I

.field private dialogsTabsHeightRow:I

.field private dialogsTabsRow:I

.field private dialogsTabsTextModeRow:I

.field private dialogsTabsTextSizeRow:I

.field private dialogsTabsToBottomRow:I

.field private disableAudioStopRow:I

.field private disableMessageClickRow:I

.field private drawerSectionRow:I

.field private drawerSectionRow2:I

.field private emojiPopupSize:I

.field private enableDirectReplyRow:I

.field private foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

.field private hideMobileNumberRow:I

.field private hideNotificationsIfPlayingRow:I

.field private keepOriginalFilenameDetailRow:I

.field private keepOriginalFilenameRow:I

.field private linkSearchRequestId:I

.field private listAdapter:Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;

.field private listView:Landroid/widget/ListView;

.field private mediaDownloadSection:I

.field private mediaDownloadSection2:I

.field private messagesSectionRow:I

.field private messagesSectionRow2:I

.field private moveVersionToSettingsRow:I

.field private notificationInvertMessagesOrderRow:I

.field private notificationSection2Row:I

.field private notificationSectionRow:I

.field private pass:I

.field private plusSettingsSectionRow:I

.field private plusSettingsSectionRow2:I

.field private privacySectionRow:I

.field private privacySectionRow2:I

.field private profileEnableGoToMsgRow:I

.field private profileSectionRow:I

.field private profileSectionRow2:I

.field private profileSharedOptionsRow:I

.field private resetPlusSettingsRow:I

.field private reseting:Z

.field private restorePlusSettingsRow:I

.field private rowCount:I

.field private savePlusSettingsRow:I

.field private saving:Z

.field private settingsSectionRow2:I

.field private showAndroidEmojiRow:I

.field private showMySettingsRow:I

.field private showOfflineToastNotificationRow:I

.field private showOnlineToastNotificationDetailRow:I

.field private showOnlineToastNotificationRow:I

.field private showPrefix:Z

.field private showToastOnlyIfContactFavRow:I

.field private showTypingToastNotificationRow:I

.field private showUsernameRow:I

.field private toastNotificationPaddingRow:I

.field private toastNotificationPositionRow:I

.field private toastNotificationSection2Row:I

.field private toastNotificationSectionRow:I

.field private toastNotificationSizeRow:I

.field private toastNotificationToBottomRow:I

.field private useDeviceFontRow:I

.field private userAbout:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 182
    iput-boolean v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->reseting:Z

    .line 183
    iput-boolean v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->saving:Z

    .line 1925
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PlusSettingsActivity;)Z
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/PlusSettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lorg/telegram/ui/PlusSettingsActivity;->showPrefix:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/PlusSettingsActivity;)Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->listAdapter:Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatDirectShareToMenu:I

    return v0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->privacySectionRow2:I

    return v0
.end method

.method static synthetic access$10100(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->showOnlineToastNotificationDetailRow:I

    return v0
.end method

.method static synthetic access$10200(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->mediaDownloadSection2:I

    return v0
.end method

.method static synthetic access$10300(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->plusSettingsSectionRow2:I

    return v0
.end method

.method static synthetic access$10400(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->keepOriginalFilenameDetailRow:I

    return v0
.end method

.method static synthetic access$10500(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsShowAllInAdminTabDetailRow:I

    return v0
.end method

.method static synthetic access$10600(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->messagesSectionRow:I

    return v0
.end method

.method static synthetic access$10700(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->profileSectionRow:I

    return v0
.end method

.method static synthetic access$10800(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->drawerSectionRow:I

    return v0
.end method

.method static synthetic access$10900(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->privacySectionRow:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatDirectShareFavsFirst:I

    return v0
.end method

.method static synthetic access$11000(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->mediaDownloadSection:I

    return v0
.end method

.method static synthetic access$11100(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsSectionRow:I

    return v0
.end method

.method static synthetic access$11200(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->notificationSectionRow:I

    return v0
.end method

.method static synthetic access$11300(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->toastNotificationSectionRow:I

    return v0
.end method

.method static synthetic access$11400(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->plusSettingsSectionRow:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatShowEditedMarkRow:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatShowDateToastRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatHideLeftGroupRow:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatHideJoinedGroupRow:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatHideBotKeyboardRow:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsHideTabsCheckRow:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsTabsTextModeRow:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsExpandTabsRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->emojiPopupSize:I

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsDoNotChangeHeaderTitleRow:I

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsDisableTabsScrollingRow:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsTabsToBottomRow:I

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsHideSelectedTabIndicator:I

    return v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsDisableTabsAnimationCheckRow:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsInfiniteTabsSwipe:I

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsHideTabsCounters:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsLimitTabsCountersRow:I

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsShowAllInAdminTabRow:I

    return v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsTabsCountersCountChats:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsTabsCountersCountNotMuted:I

    return v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->showUsernameRow:I

    return v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->moveVersionToSettingsRow:I

    return v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->profileEnableGoToMsgRow:I

    return v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->hideMobileNumberRow:I

    return v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->keepOriginalFilenameRow:I

    return v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsPicClickRow:I

    return v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsGroupPicClickRow:I

    return v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsTabsTextSizeRow:I

    return v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsTabsHeightRow:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatPhotoQualityRow:I

    return v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsManageTabsRow:I

    return v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsTabsRow:I

    return v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/PlusSettingsActivity;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/telegram/ui/PlusSettingsActivity;->createTabsDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->profileSharedOptionsRow:I

    return v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/PlusSettingsActivity;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/telegram/ui/PlusSettingsActivity;->createSharedOptions(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->showMySettingsRow:I

    return v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/PlusSettingsActivity;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/telegram/ui/PlusSettingsActivity;->createMySettingsOptions(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatShowDirectShareBtn:I

    return v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/PlusSettingsActivity;Landroid/app/AlertDialog$Builder;I)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog$Builder;
    .param p2, "x2"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PlusSettingsActivity;->createDialog(Landroid/app/AlertDialog$Builder;I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->notificationInvertMessagesOrderRow:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->showAndroidEmojiRow:I

    return v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->hideNotificationsIfPlayingRow:I

    return v0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->enableDirectReplyRow:I

    return v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatShowQuickBarRow:I

    return v0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatPhotoViewerHideStatusBarRow:I

    return v0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatDrawSingleBigEmojiRow:I

    return v0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatMarkdownRow:I

    return v0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatShowUserBioRow:I

    return v0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatDoNotHideStickersTabRow:I

    return v0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatHideInstantCameraRow:I

    return v0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatSwipeToReplyRow:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->useDeviceFontRow:I

    return v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatVerticalQuickBarRow:I

    return v0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatAlwaysBackToMainRow:I

    return v0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatDoNotCloseQuickBarRow:I

    return v0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatHideQuickBarOnScrollRow:I

    return v0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatCenterQuickBarBtnRow:I

    return v0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatShowMembersQuickBarRow:I

    return v0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatSearchUserOnTwitterRow:I

    return v0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatShowPhotoQualityBarRow:I

    return v0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatSaveToCloudQuoteRow:I

    return v0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->savePlusSettingsRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->disableAudioStopRow:I

    return v0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/PlusSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->saving:Z

    return v0
.end method

.method static synthetic access$7002(Lorg/telegram/ui/PlusSettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lorg/telegram/ui/PlusSettingsActivity;->saving:Z

    return p1
.end method

.method static synthetic access$7100(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->restorePlusSettingsRow:I

    return v0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/PlusSettingsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/telegram/ui/PlusSettingsActivity;->restoreSettings(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7300(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->resetPlusSettingsRow:I

    return v0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/PlusSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->reseting:Z

    return v0
.end method

.method static synthetic access$7402(Lorg/telegram/ui/PlusSettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lorg/telegram/ui/PlusSettingsActivity;->reseting:Z

    return p1
.end method

.method static synthetic access$7500(Lorg/telegram/ui/PlusSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/telegram/ui/PlusSettingsActivity;->fixLayout()V

    return-void
.end method

.method static synthetic access$7600(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->showTypingToastNotificationRow:I

    return v0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->showOnlineToastNotificationRow:I

    return v0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->showToastOnlyIfContactFavRow:I

    return v0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->showOfflineToastNotificationRow:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->disableMessageClickRow:I

    return v0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->toastNotificationSizeRow:I

    return v0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->toastNotificationPaddingRow:I

    return v0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->toastNotificationToBottomRow:I

    return v0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->toastNotificationPositionRow:I

    return v0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatsToLoadRow:I

    return v0
.end method

.method static synthetic access$8502(Lorg/telegram/ui/PlusSettingsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lorg/telegram/ui/PlusSettingsActivity;->linkSearchRequestId:I

    return p1
.end method

.method static synthetic access$8600(Lorg/telegram/ui/PlusSettingsActivity;)Lorg/telegram/tgnet/TLRPC$WebPage;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    return-object v0
.end method

.method static synthetic access$8602(Lorg/telegram/ui/PlusSettingsActivity;Lorg/telegram/tgnet/TLRPC$WebPage;)Lorg/telegram/tgnet/TLRPC$WebPage;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$WebPage;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/telegram/ui/PlusSettingsActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    return-object p1
.end method

.method static synthetic access$8702(Lorg/telegram/ui/PlusSettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/telegram/ui/PlusSettingsActivity;->userAbout:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8800(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->pass:I

    return v0
.end method

.method static synthetic access$8802(Lorg/telegram/ui/PlusSettingsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lorg/telegram/ui/PlusSettingsActivity;->pass:I

    return p1
.end method

.method static synthetic access$8900(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->classGuid:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatDirectShareReplies:I

    return v0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$9300(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->settingsSectionRow2:I

    return v0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsSectionRow2:I

    return v0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->messagesSectionRow2:I

    return v0
.end method

.method static synthetic access$9600(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->drawerSectionRow2:I

    return v0
.end method

.method static synthetic access$9700(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->profileSectionRow2:I

    return v0
.end method

.method static synthetic access$9800(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->notificationSection2Row:I

    return v0
.end method

.method static synthetic access$9900(Lorg/telegram/ui/PlusSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 62
    iget v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->toastNotificationSection2Row:I

    return v0
.end method

.method private createDialog(Landroid/app/AlertDialog$Builder;I)Landroid/app/AlertDialog$Builder;
    .locals 10
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "i"    # I

    .prologue
    .line 1823
    iget v6, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatShowDirectShareBtn:I

    if-ne p2, v6, :cond_0

    .line 1824
    const-string/jumbo v6, "ShowDirectShareButton"

    const v7, 0x7f07068a

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1826
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "plusconfig"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1828
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "showDSBtnUsers"

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1829
    .local v5, "showDSBtnUsers":Z
    const-string/jumbo v6, "showDSBtnGroups"

    const/4 v7, 0x1

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1830
    .local v3, "showDSBtnGroups":Z
    const-string/jumbo v6, "showDSBtnSGroups"

    const/4 v7, 0x1

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1831
    .local v4, "showDSBtnSGroups":Z
    const-string/jumbo v6, "showDSBtnChannels"

    const/4 v7, 0x1

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1832
    .local v2, "showDSBtnChannels":Z
    const-string/jumbo v6, "showDSBtnBots"

    const/4 v7, 0x1

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1834
    .local v1, "showDSBtnBots":Z
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const-string/jumbo v8, "Users"

    const v9, 0x7f070738

    .line 1835
    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "Groups"

    const v9, 0x7f070343

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "SuperGroups"

    const v9, 0x7f0706c2

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "Channels"

    const v9, 0x7f070175

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "Bots"

    const v9, 0x7f0700e7

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    new-array v7, v7, [Z

    const/4 v8, 0x0

    aput-boolean v5, v7, v8

    const/4 v8, 0x1

    aput-boolean v3, v7, v8

    const/4 v8, 0x2

    aput-boolean v4, v7, v8

    const/4 v8, 0x3

    aput-boolean v2, v7, v8

    const/4 v8, 0x4

    aput-boolean v1, v7, v8

    new-instance v8, Lorg/telegram/ui/PlusSettingsActivity$11;

    invoke-direct {v8, p0}, Lorg/telegram/ui/PlusSettingsActivity$11;-><init>(Lorg/telegram/ui/PlusSettingsActivity;)V

    .line 1834
    invoke-virtual {p1, v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1864
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    .end local v1    # "showDSBtnBots":Z
    .end local v2    # "showDSBtnChannels":Z
    .end local v3    # "showDSBtnGroups":Z
    .end local v4    # "showDSBtnSGroups":Z
    .end local v5    # "showDSBtnUsers":Z
    :cond_0
    return-object p1
.end method

.method private createMySettingsOptions(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 12
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v11, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1677
    const-string/jumbo v8, "ShowMySettings"

    const v9, 0x7f07081c

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1679
    const/4 v2, 0x1

    .line 1680
    .local v2, "VERSION":I
    const/4 v1, 0x2

    .line 1682
    .local v1, "LANGUAGE":I
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v9, "plusconfig"

    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1683
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v8, "showMySettings"

    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1684
    .local v0, "FLAGS":I
    and-int/lit8 v8, v0, 0x1

    if-ne v8, v6, :cond_0

    move v5, v6

    .line 1685
    .local v5, "showVersion":Z
    :goto_0
    and-int/lit8 v8, v0, 0x2

    if-ne v8, v11, :cond_1

    move v4, v6

    .line 1687
    .local v4, "showLanguage":Z
    :goto_1
    new-array v8, v11, [Ljava/lang/CharSequence;

    const-string/jumbo v9, "PlusVersion"

    const v10, 0x7f07081a

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    const-string/jumbo v9, "Language"

    const v10, 0x7f0703b2

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    new-array v9, v11, [Z

    aput-boolean v5, v9, v7

    aput-boolean v4, v9, v6

    new-instance v6, Lorg/telegram/ui/PlusSettingsActivity$8;

    invoke-direct {v6, p0}, Lorg/telegram/ui/PlusSettingsActivity$8;-><init>(Lorg/telegram/ui/PlusSettingsActivity;)V

    invoke-virtual {p1, v8, v9, v6}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1706
    return-object p1

    .end local v4    # "showLanguage":Z
    .end local v5    # "showVersion":Z
    :cond_0
    move v5, v7

    .line 1684
    goto :goto_0

    .restart local v5    # "showVersion":Z
    :cond_1
    move v4, v7

    .line 1685
    goto :goto_1
.end method

.method private createSharedOptions(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 14
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1593
    const-string/jumbo v7, "SharedMedia"

    const v10, 0x7f07067f

    invoke-static {v7, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1595
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "plusconfig"

    invoke-virtual {v7, v10, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1596
    .local v6, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v7, "hideSharedMedia"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1597
    .local v4, "hideMedia":Z
    const-string/jumbo v7, "hideSharedFiles"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1598
    .local v2, "hideFiles":Z
    const-string/jumbo v7, "hideSharedMusic"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1599
    .local v5, "hideMusic":Z
    const-string/jumbo v7, "hideSharedLinks"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1600
    .local v3, "hideLinks":Z
    new-array v1, v13, [Ljava/lang/CharSequence;

    const-string/jumbo v7, "SharedMediaTitle"

    const v10, 0x7f070680

    invoke-static {v7, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v9

    const-string/jumbo v7, "DocumentsTitle"

    const v10, 0x7f070233

    invoke-static {v7, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v8

    const-string/jumbo v7, "AudioTitle"

    const v10, 0x7f0700bd

    invoke-static {v7, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v11

    const-string/jumbo v7, "LinksTitle"

    const v10, 0x7f0703e8

    invoke-static {v7, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v12

    .line 1602
    .local v1, "cs":[Ljava/lang/CharSequence;
    new-array v0, v13, [Z

    if-nez v4, :cond_0

    move v7, v8

    :goto_0
    aput-boolean v7, v0, v9

    if-nez v2, :cond_1

    move v7, v8

    :goto_1
    aput-boolean v7, v0, v8

    if-nez v5, :cond_2

    move v7, v8

    :goto_2
    aput-boolean v7, v0, v11

    if-nez v3, :cond_3

    :goto_3
    aput-boolean v8, v0, v12

    .line 1604
    .local v0, "b":[Z
    new-instance v7, Lorg/telegram/ui/PlusSettingsActivity$7;

    invoke-direct {v7, p0}, Lorg/telegram/ui/PlusSettingsActivity$7;-><init>(Lorg/telegram/ui/PlusSettingsActivity;)V

    invoke-virtual {p1, v1, v0, v7}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1623
    return-object p1

    .end local v0    # "b":[Z
    :cond_0
    move v7, v9

    .line 1602
    goto :goto_0

    :cond_1
    move v7, v9

    goto :goto_1

    :cond_2
    move v7, v9

    goto :goto_2

    :cond_3
    move v8, v9

    goto :goto_3
.end method

.method private createTabsDialog(Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 9
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1543
    const-string/jumbo v0, "HideShowTabs"

    const v3, 0x7f07035f

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1545
    const/4 v0, 0x7

    new-array v3, v0, [Ljava/lang/CharSequence;

    const-string/jumbo v0, "All"

    const v4, 0x7f070062

    .line 1546
    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const-string/jumbo v0, "Users"

    const v4, 0x7f070738

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const-string/jumbo v0, "Groups"

    const v4, 0x7f070343

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    const-string/jumbo v0, "SuperGroups"

    const v4, 0x7f0706c2

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    const-string/jumbo v0, "Channels"

    const v4, 0x7f070175

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    const/4 v0, 0x5

    const-string/jumbo v4, "Bots"

    const v5, 0x7f0700e7

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string/jumbo v4, "Favorites"

    const v5, 0x7f0702ce

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x7

    new-array v4, v0, [Z

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusHideAllTab:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    aput-boolean v0, v4, v2

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusHideUsersTab:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    aput-boolean v0, v4, v1

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusHideGroupsTab:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    aput-boolean v0, v4, v6

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusHideSuperGroupsTab:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    aput-boolean v0, v4, v7

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusHideChannelsTab:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    aput-boolean v0, v4, v8

    const/4 v5, 0x5

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusHideBotsTab:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    aput-boolean v0, v4, v5

    const/4 v0, 0x6

    sget-boolean v5, Lorg/telegram/ui/ActionBar/Theme;->plusHideFavsTab:Z

    if-nez v5, :cond_6

    :goto_6
    aput-boolean v1, v4, v0

    new-instance v0, Lorg/telegram/ui/PlusSettingsActivity$6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PlusSettingsActivity$6;-><init>(Lorg/telegram/ui/PlusSettingsActivity;)V

    .line 1545
    invoke-virtual {p1, v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1589
    return-object p1

    :cond_0
    move v0, v2

    .line 1546
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v1, v2

    goto :goto_6
.end method

.method private fixLayout()V
    .locals 2

    .prologue
    .line 1897
    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1909
    :goto_0
    return-void

    .line 1900
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PlusSettingsActivity$12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PlusSettingsActivity$12;-><init>(Lorg/telegram/ui/PlusSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private restoreSettings(Ljava/lang/String;)V
    .locals 10
    .param p1, "xmlFile"    # Ljava/lang/String;

    .prologue
    .line 1501
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1502
    .local v8, "file":Ljava/io/File;
    const/4 v7, 0x0

    .line 1503
    .local v7, "favFile":Ljava/io/File;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/favorites.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1504
    .local v5, "favFilePath":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "favorites.db"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1505
    new-instance v7, Ljava/io/File;

    .end local v7    # "favFile":Ljava/io/File;
    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1507
    .restart local v7    # "favFile":Ljava/io/File;
    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    .line 1508
    .local v4, "favExists":Z
    :goto_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1509
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v0, "RestoreSettings"

    const v1, 0x7f0705ee

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1510
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1511
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1512
    const-string/jumbo v0, "OK"

    const v1, 0x7f0704f5

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lorg/telegram/ui/PlusSettingsActivity$5;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PlusSettingsActivity$5;-><init>(Lorg/telegram/ui/PlusSettingsActivity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v6, v9, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1538
    const-string/jumbo v0, "Cancel"

    const v1, 0x7f070105

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1539
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/PlusSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1540
    return-void

    .line 1507
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "favExists":Z
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private updateTheme()V
    .locals 5

    .prologue
    .line 1879
    iget-object v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 1880
    iget-object v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarTitleColor:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 1881
    invoke-virtual {p0}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1882
    .local v0, "back":Landroid/graphics/drawable/Drawable;
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1883
    iget-object v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1885
    invoke-virtual {p0}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1886
    .local v1, "other":Landroid/graphics/drawable/Drawable;
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1887
    iget-object v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 1888
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 331
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v2, 0x7f0200bc

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 333
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 336
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "PlusSettings"

    const v3, 0x7f070591

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/PlusSettingsActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PlusSettingsActivity$1;-><init>(Lorg/telegram/ui/PlusSettingsActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 347
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/PlusSettingsActivity$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PlusSettingsActivity$2;-><init>(Lorg/telegram/ui/PlusSettingsActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    new-instance v1, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;-><init>(Lorg/telegram/ui/PlusSettingsActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity;->listAdapter:Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;

    .line 362
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity;->fragmentView:Landroid/view/View;

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 366
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity;->listView:Landroid/widget/ListView;

    .line 368
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity;->listView:Landroid/widget/ListView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 369
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity;->listView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 370
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 371
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 373
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->listAdapter:Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 379
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity;->listView:Landroid/widget/ListView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->setListViewEdgeEffectColor(Landroid/widget/AbsListView;I)V

    .line 380
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity;->listView:Landroid/widget/ListView;

    const/16 v2, 0x33

    invoke-static {v5, v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->listAdapter:Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 382
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity;->listView:Landroid/widget/ListView;

    new-instance v2, Lorg/telegram/ui/PlusSettingsActivity$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PlusSettingsActivity$3;-><init>(Lorg/telegram/ui/PlusSettingsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1472
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity;->listView:Landroid/widget/ListView;

    new-instance v2, Lorg/telegram/ui/PlusSettingsActivity$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PlusSettingsActivity$4;-><init>(Lorg/telegram/ui/PlusSettingsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1495
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1497
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1913
    sget v1, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    if-ne p1, v1, :cond_0

    .line 1914
    const/4 v1, 0x0

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1916
    .local v0, "i":I
    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 1917
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity;->listView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 1918
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 1922
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getUserAbout()V
    .locals 7

    .prologue
    .line 1715
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 1721
    .local v0, "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    const-string/jumbo v3, "https://telegram.me/%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1723
    .local v1, "link":Ljava/lang/String;
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->userAbout:Ljava/lang/String;

    .line 1724
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;-><init>()V

    .line 1725
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;
    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;->message:Ljava/lang/String;

    .line 1726
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/PlusSettingsActivity$9;

    invoke-direct {v4, p0}, Lorg/telegram/ui/PlusSettingsActivity$9;-><init>(Lorg/telegram/ui/PlusSettingsActivity;)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->linkSearchRequestId:I

    .line 1761
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/PlusSettingsActivity;->linkSearchRequestId:I

    iget v5, p0, Lorg/telegram/ui/PlusSettingsActivity;->classGuid:I

    invoke-virtual {v3, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    .line 1762
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1892
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1893
    invoke-direct {p0}, Lorg/telegram/ui/PlusSettingsActivity;->fixLayout()V

    .line 1894
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 189
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 191
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 193
    iput v6, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    .line 198
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->settingsSectionRow2:I

    .line 200
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 201
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->showAndroidEmojiRow:I

    .line 205
    :goto_0
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->useDeviceFontRow:I

    .line 206
    iput v4, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatsToLoadRow:I

    .line 208
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsSectionRow:I

    .line 209
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsSectionRow2:I

    .line 211
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsHideTabsCheckRow:I

    .line 212
    iput v4, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsTabsRow:I

    .line 213
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsManageTabsRow:I

    .line 214
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsTabsHeightRow:I

    .line 215
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsTabsTextModeRow:I

    .line 216
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsTabsTextSizeRow:I

    .line 217
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsExpandTabsRow:I

    .line 218
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsTabsToBottomRow:I

    .line 219
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsDisableTabsScrollingRow:I

    .line 220
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsDisableTabsAnimationCheckRow:I

    .line 221
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsInfiniteTabsSwipe:I

    .line 222
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsHideTabsCounters:I

    .line 223
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsTabsCountersCountNotMuted:I

    .line 224
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsTabsCountersCountChats:I

    .line 225
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsLimitTabsCountersRow:I

    .line 226
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsHideSelectedTabIndicator:I

    .line 227
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsDoNotChangeHeaderTitleRow:I

    .line 228
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsShowAllInAdminTabRow:I

    .line 229
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsShowAllInAdminTabDetailRow:I

    .line 231
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsPicClickRow:I

    .line 232
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->dialogsGroupPicClickRow:I

    .line 234
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->messagesSectionRow:I

    .line 235
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->messagesSectionRow2:I

    .line 236
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->emojiPopupSize:I

    .line 237
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->disableAudioStopRow:I

    .line 238
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->disableMessageClickRow:I

    .line 239
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatShowDirectShareBtn:I

    .line 240
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatDirectShareReplies:I

    .line 241
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatDirectShareToMenu:I

    .line 242
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatDirectShareFavsFirst:I

    .line 243
    iput v4, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatShowEditedMarkRow:I

    .line 244
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatHideLeftGroupRow:I

    .line 245
    iput v4, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatHideJoinedGroupRow:I

    .line 246
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatHideBotKeyboardRow:I

    .line 247
    iput v4, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatShowDateToastRow:I

    .line 248
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatSearchUserOnTwitterRow:I

    .line 249
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatShowPhotoQualityBarRow:I

    .line 250
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatPhotoQualityRow:I

    .line 251
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatShowQuickBarRow:I

    .line 252
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatVerticalQuickBarRow:I

    .line 253
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatAlwaysBackToMainRow:I

    .line 254
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatDoNotCloseQuickBarRow:I

    .line 255
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatHideQuickBarOnScrollRow:I

    .line 256
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatCenterQuickBarBtnRow:I

    .line 257
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatShowMembersQuickBarRow:I

    .line 258
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatSaveToCloudQuoteRow:I

    .line 259
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatSwipeToReplyRow:I

    .line 260
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatHideInstantCameraRow:I

    .line 261
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatDoNotHideStickersTabRow:I

    .line 262
    iput v4, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatMarkdownRow:I

    .line 263
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatDrawSingleBigEmojiRow:I

    .line 264
    iput v4, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatPhotoViewerHideStatusBarRow:I

    .line 265
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->chatShowUserBioRow:I

    .line 267
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->drawerSectionRow:I

    .line 268
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->drawerSectionRow2:I

    .line 269
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->showUsernameRow:I

    .line 270
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->moveVersionToSettingsRow:I

    .line 272
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->profileSectionRow:I

    .line 273
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->profileSectionRow2:I

    .line 274
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->profileSharedOptionsRow:I

    .line 275
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->profileEnableGoToMsgRow:I

    .line 277
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->notificationSectionRow:I

    .line 278
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->notificationSection2Row:I

    .line 279
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->hideNotificationsIfPlayingRow:I

    .line 280
    iput v4, p0, Lorg/telegram/ui/PlusSettingsActivity;->notificationInvertMessagesOrderRow:I

    .line 281
    iput v4, p0, Lorg/telegram/ui/PlusSettingsActivity;->enableDirectReplyRow:I

    .line 284
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->toastNotificationSectionRow:I

    .line 285
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->toastNotificationSection2Row:I

    .line 286
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->showTypingToastNotificationRow:I

    .line 287
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->showOnlineToastNotificationRow:I

    .line 288
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->showOnlineToastNotificationDetailRow:I

    .line 289
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->toastNotificationToBottomRow:I

    .line 290
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->toastNotificationPositionRow:I

    .line 291
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->toastNotificationSizeRow:I

    .line 292
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->toastNotificationPaddingRow:I

    .line 293
    iput v4, p0, Lorg/telegram/ui/PlusSettingsActivity;->showToastOnlyIfContactFavRow:I

    .line 294
    iput v4, p0, Lorg/telegram/ui/PlusSettingsActivity;->showOfflineToastNotificationRow:I

    .line 296
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->privacySectionRow:I

    .line 297
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->privacySectionRow2:I

    .line 298
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->hideMobileNumberRow:I

    .line 300
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 301
    .local v0, "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_0
    iput v4, p0, Lorg/telegram/ui/PlusSettingsActivity;->showMySettingsRow:I

    .line 303
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->mediaDownloadSection:I

    .line 304
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->mediaDownloadSection2:I

    .line 305
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->keepOriginalFilenameRow:I

    .line 306
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->keepOriginalFilenameDetailRow:I

    .line 308
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->plusSettingsSectionRow:I

    .line 309
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->plusSettingsSectionRow2:I

    .line 310
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->savePlusSettingsRow:I

    .line 311
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->restorePlusSettingsRow:I

    .line 312
    iget v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PlusSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->resetPlusSettingsRow:I

    .line 314
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "plusconfig"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 315
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "plusShowPrefix"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/PlusSettingsActivity;->showPrefix:Z

    .line 317
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/PlusSettingsActivity;->classGuid:I

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZ)V

    .line 319
    return v5

    .line 203
    .end local v0    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_1
    iput v4, p0, Lorg/telegram/ui/PlusSettingsActivity;->showAndroidEmojiRow:I

    goto/16 :goto_0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 324
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 325
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 326
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1869
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1870
    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->listAdapter:Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 1871
    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity;->listAdapter:Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->notifyDataSetChanged()V

    .line 1874
    :cond_0
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/PlusSettingsActivity;->updateTheme()V

    .line 1875
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PlusSettingsActivity;->fixLayout()V

    .line 1876
    return-void
.end method

.method public setUserAbout()V
    .locals 17

    .prologue
    .line 1767
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PlusSettingsActivity;->userAbout:Ljava/lang/String;

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 1769
    .local v9, "startIndex":I
    const/4 v6, 0x0

    .line 1771
    .local v6, "result":Ljava/lang/String;
    const/4 v12, -0x1

    if-eq v9, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PlusSettingsActivity;->userAbout:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eq v9, v12, :cond_0

    .line 1772
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PlusSettingsActivity;->userAbout:Ljava/lang/String;

    add-int/lit8 v13, v9, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1774
    :cond_0
    sget-object v12, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v13, "plusconfig"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1775
    .local v4, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v12, "showMySettings"

    const/4 v13, 0x0

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1776
    .local v1, "FLAGS":I
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    const/4 v8, 0x1

    .line 1777
    .local v8, "showVersion":Z
    :goto_0
    and-int/lit8 v12, v1, 0x2

    const/4 v13, 0x2

    if-ne v12, v13, :cond_5

    const/4 v7, 0x1

    .line 1778
    .local v7, "showLanguage":Z
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getVersion()Ljava/lang/String;

    move-result-object v11

    .line 1780
    .local v11, "version":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1781
    .local v10, "status":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 1782
    move-object v10, v11

    .line 1785
    :cond_1
    sget-object v12, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->mainconfig:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1786
    .local v3, "mainPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v12, "language"

    const/4 v13, 0x0

    invoke-interface {v3, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1787
    .local v2, "lang":Ljava/lang/String;
    if-eqz v2, :cond_2

    if-eqz v7, :cond_2

    .line 1788
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v10, :cond_6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_2
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1790
    :cond_2
    if-nez v10, :cond_7

    .line 1820
    :cond_3
    :goto_3
    return-void

    .line 1776
    .end local v2    # "lang":Ljava/lang/String;
    .end local v3    # "mainPreferences":Landroid/content/SharedPreferences;
    .end local v7    # "showLanguage":Z
    .end local v8    # "showVersion":Z
    .end local v10    # "status":Ljava/lang/String;
    .end local v11    # "version":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 1777
    .restart local v8    # "showVersion":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 1788
    .restart local v2    # "lang":Ljava/lang/String;
    .restart local v3    # "mainPreferences":Landroid/content/SharedPreferences;
    .restart local v7    # "showLanguage":Z
    .restart local v10    # "status":Ljava/lang/String;
    .restart local v11    # "version":Ljava/lang/String;
    :cond_6
    const-string/jumbo v12, ""

    goto :goto_2

    .line 1793
    :cond_7
    if-eqz v6, :cond_8

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1797
    :cond_8
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;-><init>()V

    .line 1798
    .local v5, "req":Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;
    iget v12, v5, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    or-int/lit8 v12, v12, 0x4

    iput v12, v5, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    .line 1799
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v6, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PlusSettingsActivity;->userAbout:Ljava/lang/String;

    :goto_4
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->about:Ljava/lang/String;

    .line 1801
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/PlusSettingsActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/telegram/ui/PlusSettingsActivity$10;-><init>(Lorg/telegram/ui/PlusSettingsActivity;)V

    invoke-virtual {v12, v5, v13}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_3

    .line 1799
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PlusSettingsActivity;->userAbout:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/PlusSettingsActivity;->userAbout:Ljava/lang/String;

    const-string/jumbo v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto :goto_4
.end method
