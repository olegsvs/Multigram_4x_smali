.class public Lorg/telegram/ui/PaymentFormActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PaymentFormActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PaymentFormActivity$LinkSpan;,
        Lorg/telegram/ui/PaymentFormActivity$LinkMovementMethodMy;,
        Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;,
        Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;
    }
.end annotation


# static fields
.field private static final FIELDS_COUNT_ADDRESS:I = 0xa

.field private static final FIELDS_COUNT_CARD:I = 0x6

.field private static final FIELDS_COUNT_SAVEDCARD:I = 0x2

.field private static final FIELD_CARD:I = 0x0

.field private static final FIELD_CARDNAME:I = 0x2

.field private static final FIELD_CARD_COUNTRY:I = 0x4

.field private static final FIELD_CARD_POSTCODE:I = 0x5

.field private static final FIELD_CITY:I = 0x2

.field private static final FIELD_COUNTRY:I = 0x4

.field private static final FIELD_CVV:I = 0x3

.field private static final FIELD_EMAIL:I = 0x7

.field private static final FIELD_EXPIRE_DATE:I = 0x1

.field private static final FIELD_NAME:I = 0x6

.field private static final FIELD_PHONE:I = 0x9

.field private static final FIELD_PHONECODE:I = 0x8

.field private static final FIELD_POSTCODE:I = 0x5

.field private static final FIELD_SAVEDCARD:I = 0x0

.field private static final FIELD_SAVEDPASSWORD:I = 0x1

.field private static final FIELD_STATE:I = 0x3

.field private static final FIELD_STREET1:I = 0x0

.field private static final FIELD_STREET2:I = 0x1

.field private static final LOAD_FULL_WALLET_REQUEST_CODE:I = 0x3e9

.field private static final LOAD_MASKED_WALLET_REQUEST_CODE:I = 0x3e8

.field private static final done_button:I = 0x1

.field private static final fragment_container_id:I = 0xfa0


# instance fields
.field private androidPayContainer:Landroid/widget/FrameLayout;

.field private botUser:Lorg/telegram/tgnet/TLRPC$User;

.field private bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private bottomLayout:Landroid/widget/FrameLayout;

.field private canceled:Z

.field private cardName:Ljava/lang/String;

.field private checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

.field private codesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private countriesArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private countriesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private countryName:Ljava/lang/String;

.field private currentBotName:Ljava/lang/String;

.field private currentItemName:Ljava/lang/String;

.field private currentStep:I

.field private delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

.field private detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

.field private dividers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private doneItemAnimation:Landroid/animation/AnimatorSet;

.field private donePressed:Z

.field private googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

.field private ignoreOnCardChange:Z

.field private ignoreOnPhoneChange:Z

.field private ignoreOnTextChange:Z

.field private inputFields:[Landroid/widget/EditText;

.field private isWebView:Z

.field private linearLayout2:Landroid/widget/LinearLayout;

.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field private need_card_country:Z

.field private need_card_name:Z

.field private need_card_postcode:Z

.field private passwordOk:Z

.field private payTextView:Landroid/widget/TextView;

.field private paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

.field private paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

.field private paymentJson:Ljava/lang/String;

.field private phoneFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private progressView:Lorg/telegram/ui/Components/ContextProgressView;

.field private progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

.field private radioCells:[Lorg/telegram/ui/Cells/RadioCell;

.field private requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

.field private saveCardInfo:Z

.field private saveShippingInfo:Z

.field private scrollView:Landroid/widget/ScrollView;

.field private sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private settingsCell1:Lorg/telegram/ui/Cells/TextSettingsCell;

.field private shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

.field private stripeApiKey:Ljava/lang/String;

.field private textView:Landroid/widget/TextView;

.field private totalPriceDecimal:Ljava/lang/String;

.field private validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

.field private webView:Landroid/webkit/WebView;

.field private webviewLoading:Z


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;)V
    .locals 2
    .param p1, "message"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "receipt"    # Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;

    .prologue
    const/4 v1, 0x3

    .line 299
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesMap:Ljava/util/HashMap;

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->phoneFormatMap:Ljava/util/HashMap;

    .line 184
    new-array v0, v1, [Lorg/telegram/ui/Cells/HeaderCell;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    .line 186
    new-array v0, v1, [Lorg/telegram/ui/Cells/ShadowSectionCell;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 188
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 198
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 300
    const/4 v0, 0x5

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    .line 301
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget v1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->bot_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->bot_id:I

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget v1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->provider_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->provider_id:I

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->users:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    .line 306
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->shipping:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    .line 307
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 308
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->bot_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    .line 314
    :goto_0
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentItemName:Ljava/lang/String;

    .line 315
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v0, :cond_0

    .line 316
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    .line 319
    :cond_0
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentReceipt;->credentials_title:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    .line 320
    return-void

    .line 312
    :cond_1
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;)V
    .locals 10
    .param p1, "form"    # Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;
    .param p2, "message"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v1, 0x3

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 322
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesMap:Ljava/util/HashMap;

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->phoneFormatMap:Ljava/util/HashMap;

    .line 184
    new-array v0, v1, [Lorg/telegram/ui/Cells/HeaderCell;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    .line 186
    new-array v0, v1, [Lorg/telegram/ui/Cells/ShadowSectionCell;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 188
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 198
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 324
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->shipping_address_requested:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-eqz v0, :cond_1

    .line 325
    :cond_0
    const/4 v3, 0x0

    .local v3, "step":I
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    .line 341
    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/PaymentFormActivity;->init(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;Z)V

    .line 342
    return-void

    .line 326
    .end local v3    # "step":I
    :cond_1
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v0, :cond_4

    .line 327
    sget-object v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v0, :cond_2

    .line 328
    sget-object v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->valid_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    add-int/lit8 v1, v1, 0x3c

    if-ge v0, v1, :cond_2

    .line 329
    sput-object v4, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 330
    invoke-static {v9}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 333
    :cond_2
    sget-object v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v0, :cond_3

    .line 334
    const/4 v3, 0x4

    .restart local v3    # "step":I
    goto :goto_0

    .line 336
    .end local v3    # "step":I
    :cond_3
    const/4 v3, 0x3

    .restart local v3    # "step":I
    goto :goto_0

    .line 339
    .end local v3    # "step":I
    :cond_4
    const/4 v3, 0x2

    .restart local v3    # "step":I
    goto :goto_0
.end method

.method private constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;Z)V
    .locals 2
    .param p1, "form"    # Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;
    .param p2, "message"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "step"    # I
    .param p4, "validatedRequestedInfo"    # Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;
    .param p5, "shipping"    # Lorg/telegram/tgnet/TLRPC$TL_shippingOption;
    .param p6, "tokenJson"    # Ljava/lang/String;
    .param p7, "card"    # Ljava/lang/String;
    .param p8, "request"    # Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;
    .param p9, "saveCard"    # Z

    .prologue
    const/4 v1, 0x3

    .line 344
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesMap:Ljava/util/HashMap;

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->phoneFormatMap:Ljava/util/HashMap;

    .line 184
    new-array v0, v1, [Lorg/telegram/ui/Cells/HeaderCell;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    .line 186
    new-array v0, v1, [Lorg/telegram/ui/Cells/ShadowSectionCell;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 188
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 198
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 345
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/PaymentFormActivity;->init(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;Z)V

    .line 346
    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;ZLorg/telegram/ui/PaymentFormActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;
    .param p2, "x1"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;
    .param p5, "x4"    # Lorg/telegram/tgnet/TLRPC$TL_shippingOption;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;
    .param p9, "x8"    # Z
    .param p10, "x9"    # Lorg/telegram/ui/PaymentFormActivity$1;

    .prologue
    .line 141
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;Z)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->sendCardData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->checkPassword()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->countryName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnTextChange:Z

    return v0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/PaymentFormActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnTextChange:Z

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PaymentFormActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PaymentFormActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PaymentFormActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->phoneFormatMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnPhoneChange:Z

    return v0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/PaymentFormActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnPhoneChange:Z

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    return v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/PaymentFormActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/Cells/TextCheckCell;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    return-object v0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/PaymentFormActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->webviewLoading:Z

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/PaymentFormActivity;ZZ)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    return v0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/PaymentFormActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->showAndroidPay()V

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnCardChange:Z

    return v0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/PaymentFormActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->ignoreOnCardChange:Z

    return p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->need_card_name:Z

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    return v0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/PaymentFormActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->passwordOk:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/messenger/MessageObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V

    return-void
.end method

.method static synthetic access$3700(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/PaymentFormActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->showPayAlert(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/PaymentFormActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    return v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->sendData()V

    return-void
.end method

.method static synthetic access$4200(Lorg/telegram/ui/PaymentFormActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->canceled:Z

    return v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/PaymentFormActivity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # I

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    return-void
.end method

.method static synthetic access$4400(Lorg/telegram/ui/PaymentFormActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/Components/ContextProgressView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/PaymentFormActivity;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$4602(Lorg/telegram/ui/PaymentFormActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 141
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$4700(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/Components/ContextProgressView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    return-object v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/PaymentFormActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PaymentFormActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->sendForm()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/PaymentFormActivity;)[Lorg/telegram/ui/Cells/RadioCell;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_shippingOption;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    return-object v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;)Lorg/telegram/tgnet/TLRPC$TL_shippingOption;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    .prologue
    .line 141
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    return-object p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    return-object v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;)Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PaymentFormActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    .prologue
    .line 141
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    return-object p1
.end method

.method private checkPassword()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2522
    sget-object v3, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v3, :cond_0

    .line 2523
    sget-object v3, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->valid_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    add-int/lit8 v4, v4, 0x3c

    if-ge v3, v4, :cond_0

    .line 2524
    const/4 v3, 0x0

    sput-object v3, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 2525
    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 2528
    :cond_0
    sget-object v3, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v3, :cond_1

    .line 2529
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->sendData()V

    .line 2611
    :goto_0
    return-void

    .line 2532
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 2533
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 2534
    .local v2, "v":Landroid/os/Vibrator;
    if-eqz v2, :cond_2

    .line 2535
    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2537
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v3, v3, v6

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    goto :goto_0

    .line 2540
    .end local v2    # "v":Landroid/os/Vibrator;
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2541
    .local v0, "password":Ljava/lang/String;
    invoke-direct {p0, v6, v6}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 2542
    invoke-direct {p0, v6}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    .line 2543
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;-><init>()V

    .line 2544
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$31;

    invoke-direct {v4, p0, v0, v1}, Lorg/telegram/ui/PaymentFormActivity$31;-><init>(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;)V

    const/4 v5, 0x2

    invoke-virtual {v3, v1, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0
.end method

.method private getRequestInfo()Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;
    .locals 4

    .prologue
    .line 2411
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;-><init>()V

    .line 2412
    .local v0, "info":Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-eqz v1, :cond_0

    .line 2413
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    .line 2414
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 2416
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-eqz v1, :cond_1

    .line 2417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    .line 2418
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 2420
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-eqz v1, :cond_2

    .line 2421
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    .line 2422
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 2424
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->shipping_address_requested:Z

    if-eqz v1, :cond_3

    .line 2425
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_postAddress;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    .line 2426
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line1:Ljava/lang/String;

    .line 2427
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line2:Ljava/lang/String;

    .line 2428
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->city:Ljava/lang/String;

    .line 2429
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->state:Ljava/lang/String;

    .line 2430
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->countryName:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->countryName:Ljava/lang/String;

    :goto_0
    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->country_iso2:Ljava/lang/String;

    .line 2431
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->post_code:Ljava/lang/String;

    .line 2432
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 2434
    :cond_3
    return-object v0

    .line 2430
    :cond_4
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method private getTotalPriceDecimalString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1876
    .local p1, "prices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;>;"
    const/4 v1, 0x0

    .line 1877
    .local v1, "amount":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1878
    int-to-long v4, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->amount:J

    add-long/2addr v2, v4

    long-to-int v1, v2

    .line 1877
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1880
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    int-to-long v4, v1

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v3, v6}, Lorg/telegram/messenger/LocaleController;->formatCurrencyDecimalString(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getTotalPriceString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1868
    .local p1, "prices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;>;"
    const/4 v1, 0x0

    .line 1869
    .local v1, "amount":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1870
    int-to-long v4, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->amount:J

    add-long/2addr v2, v4

    long-to-int v1, v2

    .line 1869
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1872
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    int-to-long v4, v1

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v3}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private goToNextStep()V
    .locals 14

    .prologue
    .line 2073
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    if-nez v0, :cond_5

    .line 2075
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->flexible:Z

    if-eqz v0, :cond_1

    .line 2076
    const/4 v3, 0x1

    .line 2092
    .local v3, "nextStep":I
    :goto_0
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v8, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v9, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;Z)V

    iget-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity;->isWebView:Z

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 2130
    .end local v3    # "nextStep":I
    :cond_0
    :goto_1
    return-void

    .line 2077
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v0, :cond_4

    .line 2078
    sget-object v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v0, :cond_2

    .line 2079
    sget-object v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->valid_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    add-int/lit8 v1, v1, 0x3c

    if-ge v0, v1, :cond_2

    .line 2080
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 2081
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 2084
    :cond_2
    sget-object v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v0, :cond_3

    .line 2085
    const/4 v3, 0x4

    .restart local v3    # "nextStep":I
    goto :goto_0

    .line 2087
    .end local v3    # "nextStep":I
    :cond_3
    const/4 v3, 0x3

    .restart local v3    # "nextStep":I
    goto :goto_0

    .line 2090
    .end local v3    # "nextStep":I
    :cond_4
    const/4 v3, 0x2

    .restart local v3    # "nextStep":I
    goto :goto_0

    .line 2093
    .end local v3    # "nextStep":I
    :cond_5
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 2095
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v0, :cond_8

    .line 2096
    sget-object v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v0, :cond_6

    .line 2097
    sget-object v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->valid_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    add-int/lit8 v1, v1, 0x3c

    if-ge v0, v1, :cond_6

    .line 2098
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 2099
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 2102
    :cond_6
    sget-object v0, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v0, :cond_7

    .line 2103
    const/4 v3, 0x4

    .line 2110
    .restart local v3    # "nextStep":I
    :goto_2
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v8, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v9, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;Z)V

    iget-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity;->isWebView:Z

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_1

    .line 2105
    .end local v3    # "nextStep":I
    :cond_7
    const/4 v3, 0x3

    .restart local v3    # "nextStep":I
    goto :goto_2

    .line 2108
    .end local v3    # "nextStep":I
    :cond_8
    const/4 v3, 0x2

    .restart local v3    # "nextStep":I
    goto :goto_2

    .line 2111
    .end local v3    # "nextStep":I
    :cond_9
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 2112
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    if-eqz v0, :cond_a

    .line 2113
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    invoke-interface {v0, v1, v2, v4}, Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;->didSelectNewCard(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2114
    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->finishFragment()V

    goto/16 :goto_1

    .line 2116
    :cond_a
    new-instance v4, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v6, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x4

    iget-object v8, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v9, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v10, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v11, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v12, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v13, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    invoke-direct/range {v4 .. v13}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;Z)V

    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->isWebView:Z

    invoke-virtual {p0, v4, v0}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_1

    .line 2118
    :cond_b
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    .line 2120
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->passwordOk:Z

    if-eqz v0, :cond_c

    .line 2121
    const/4 v3, 0x4

    .line 2125
    .restart local v3    # "nextStep":I
    :goto_3
    new-instance v0, Lorg/telegram/ui/PaymentFormActivity;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v6, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    iget-object v8, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v9, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/PaymentFormActivity;-><init>(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;Z)V

    iget-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity;->passwordOk:Z

    if-nez v1, :cond_d

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_1

    .line 2123
    .end local v3    # "nextStep":I
    :cond_c
    const/4 v3, 0x2

    .restart local v3    # "nextStep":I
    goto :goto_3

    .line 2125
    :cond_d
    const/4 v1, 0x0

    goto :goto_4

    .line 2126
    .end local v3    # "nextStep":I
    :cond_e
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2127
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2128
    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->finishFragment()V

    goto/16 :goto_1
.end method

.method private init(Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;Lorg/telegram/messenger/MessageObject;ILorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;Lorg/telegram/tgnet/TLRPC$TL_shippingOption;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;Z)V
    .locals 4
    .param p1, "form"    # Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;
    .param p2, "message"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "step"    # I
    .param p4, "validatedRequestedInfo"    # Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;
    .param p5, "shipping"    # Lorg/telegram/tgnet/TLRPC$TL_shippingOption;
    .param p6, "tokenJson"    # Ljava/lang/String;
    .param p7, "card"    # Ljava/lang/String;
    .param p8, "request"    # Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;
    .param p9, "saveCard"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 353
    iput p3, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    .line 354
    iput-object p6, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    .line 355
    iput-object p4, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    .line 356
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    .line 357
    iput-object p5, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    .line 358
    iput-object p2, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 359
    iput-boolean p9, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    .line 360
    const-string/jumbo v0, "stripe"

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_provider:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->isWebView:Z

    .line 361
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->bot_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 362
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->botUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    .line 367
    :goto_1
    iget-object v0, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentItemName:Ljava/lang/String;

    .line 368
    iput-object p8, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    .line 369
    iput-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    .line 370
    if-eqz p9, :cond_3

    .line 371
    iput-boolean p9, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    .line 375
    :goto_2
    if-nez p7, :cond_5

    .line 376
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->title:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    .line 382
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 360
    goto :goto_0

    .line 365
    :cond_2
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    goto :goto_1

    .line 373
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v0, :cond_4

    :goto_4
    iput-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_4

    .line 380
    :cond_5
    iput-object p7, p0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    goto :goto_3
.end method

.method private sendCardData()Z
    .locals 18

    .prologue
    .line 2215
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->can_save_credentials:Z

    if-eqz v2, :cond_0

    .line 2230
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2231
    .local v15, "date":Ljava/lang/String;
    const-string/jumbo v2, "/"

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 2232
    .local v14, "args":[Ljava/lang/String;
    array-length v2, v14

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 2233
    const/4 v2, 0x0

    aget-object v2, v14, v2

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 2234
    .local v3, "month":Ljava/lang/Integer;
    const/4 v2, 0x1

    aget-object v2, v14, v2

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 2239
    .local v4, "year":Ljava/lang/Integer;
    :goto_0
    new-instance v1, Lcom/stripe/android/model/Card;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    .line 2240
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    .line 2243
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    .line 2244
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v12, 0x5

    aget-object v11, v11, v12

    .line 2246
    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v13, 0x4

    aget-object v12, v12, v13

    .line 2247
    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v13}, Lcom/stripe/android/model/Card;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2249
    .local v1, "card":Lcom/stripe/android/model/Card;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/stripe/android/model/Card;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " *"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/stripe/android/model/Card;->getLast4()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    .line 2250
    invoke-virtual {v1}, Lcom/stripe/android/model/Card;->validateNumber()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2251
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    .line 2252
    const/4 v2, 0x0

    .line 2305
    :goto_1
    return v2

    .line 2236
    .end local v1    # "card":Lcom/stripe/android/model/Card;
    .end local v3    # "month":Ljava/lang/Integer;
    .end local v4    # "year":Ljava/lang/Integer;
    :cond_1
    const/4 v3, 0x0

    .line 2237
    .restart local v3    # "month":Ljava/lang/Integer;
    const/4 v4, 0x0

    .restart local v4    # "year":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 2253
    .restart local v1    # "card":Lcom/stripe/android/model/Card;
    :cond_2
    invoke-virtual {v1}, Lcom/stripe/android/model/Card;->validateExpMonth()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/stripe/android/model/Card;->validateExpYear()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/stripe/android/model/Card;->validateExpiryDate()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2254
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    .line 2255
    const/4 v2, 0x0

    goto :goto_1

    .line 2256
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_name:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v5, 0x2

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 2257
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    .line 2258
    const/4 v2, 0x0

    goto :goto_1

    .line 2259
    :cond_5
    invoke-virtual {v1}, Lcom/stripe/android/model/Card;->validateCVC()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2260
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    .line 2261
    const/4 v2, 0x0

    goto :goto_1

    .line 2262
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_country:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v5, 0x4

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 2263
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    .line 2264
    const/4 v2, 0x0

    goto :goto_1

    .line 2265
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v5, 0x5

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-nez v2, :cond_8

    .line 2266
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->shakeField(I)V

    .line 2267
    const/4 v2, 0x0

    goto :goto_1

    .line 2269
    :cond_8
    const/4 v2, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 2271
    :try_start_0
    new-instance v17, Lcom/stripe/android/Stripe;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PaymentFormActivity;->stripeApiKey:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lcom/stripe/android/Stripe;-><init>(Ljava/lang/String;)V

    .line 2272
    .local v17, "stripe":Lcom/stripe/android/Stripe;
    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$28;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/PaymentFormActivity$28;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Lcom/stripe/android/Stripe;->createToken(Lcom/stripe/android/model/Card;Lcom/stripe/android/TokenCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2305
    .end local v17    # "stripe":Lcom/stripe/android/Stripe;
    :goto_2
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2302
    :catch_0
    move-exception v16

    .line 2303
    .local v16, "e":Ljava/lang/Exception;
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private sendData()V
    .locals 4

    .prologue
    .line 2438
    iget-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity;->canceled:Z

    if-eqz v1, :cond_0

    .line 2502
    :goto_0
    return-void

    .line 2441
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 2442
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;-><init>()V

    .line 2443
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->msg_id:I

    .line 2444
    sget-object v1, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    if-eqz v1, :cond_3

    .line 2445
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsSaved;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentialsSaved;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    .line 2446
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->id:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->id:Ljava/lang/String;

    .line 2447
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    sget-object v2, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->tmp_password:[B

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->tmp_password:[B

    .line 2454
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->id:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2455
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->id:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->requested_info_id:Ljava/lang/String;

    .line 2456
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    .line 2458
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-eqz v1, :cond_2

    .line 2459
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->id:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->shipping_option_id:Ljava/lang/String;

    .line 2460
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->flags:I

    .line 2462
    :cond_2
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$30;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/PaymentFormActivity$30;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    .line 2449
    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentials;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentials;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    .line 2450
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    iget-boolean v2, p0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->save:Z

    .line 2451
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->data:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 2452
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;->credentials:Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->data:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    goto :goto_1
.end method

.method private sendForm()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2309
    iget-boolean v1, p0, Lorg/telegram/ui/PaymentFormActivity;->canceled:Z

    if-eqz v1, :cond_0

    .line 2408
    :goto_0
    return-void

    .line 2312
    :cond_0
    invoke-direct {p0, v5, v5}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 2313
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    .line 2314
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-boolean v2, p0, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->save:Z

    .line 2315
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->msg_id:I

    .line 2316
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    .line 2317
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-eqz v1, :cond_1

    .line 2318
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    .line 2319
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 2321
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-eqz v1, :cond_2

    .line 2322
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    .line 2323
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 2325
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-eqz v1, :cond_3

    .line 2326
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    .line 2327
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 2329
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->shipping_address_requested:Z

    if-eqz v1, :cond_4

    .line 2330
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_postAddress;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    .line 2331
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line1:Ljava/lang/String;

    .line 2332
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line2:Ljava/lang/String;

    .line 2333
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->city:Ljava/lang/String;

    .line 2334
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->state:Ljava/lang/String;

    .line 2335
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->countryName:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->countryName:Ljava/lang/String;

    :goto_1
    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->country_iso2:Ljava/lang/String;

    .line 2336
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->post_code:Ljava/lang/String;

    .line 2337
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->flags:I

    .line 2339
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    .line 2340
    .local v0, "req":Lorg/telegram/tgnet/TLObject;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    new-instance v3, Lorg/telegram/ui/PaymentFormActivity$29;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/PaymentFormActivity$29;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v1, v2, v3, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_0

    .line 2335
    .end local v0    # "req":Lorg/telegram/tgnet/TLObject;
    :cond_5
    const-string/jumbo v1, ""

    goto :goto_1
.end method

.method private setDelegate(Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;)V
    .locals 0
    .param p1, "paymentFormActivityDelegate"    # Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    .prologue
    .line 349
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity;->delegate:Lorg/telegram/ui/PaymentFormActivity$PaymentFormActivityDelegate;

    .line 350
    return-void
.end method

.method private setDonePressed(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2513
    iput-boolean p1, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    .line 2514
    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->swipeBackEnabled:Z

    .line 2515
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2516
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 2517
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v0, v0, v2

    iget-boolean v3, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    if-nez v3, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setEnabled(Z)V

    .line 2519
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 2514
    goto :goto_0

    :cond_2
    move v0, v2

    .line 2515
    goto :goto_1

    :cond_3
    move v1, v2

    .line 2517
    goto :goto_2
.end method

.method private shakeField(I)V
    .locals 4
    .param p1, "field"    # I

    .prologue
    .line 2505
    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 2506
    .local v0, "v":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    .line 2507
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2509
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v1, v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    .line 2510
    return-void
.end method

.method private showAndroidPay()V
    .locals 15

    .prologue
    const/4 v11, 0x6

    const/4 v14, 0x0

    const/4 v10, 0x1

    .line 1958
    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v9, v9, v14

    if-nez v9, :cond_1

    .line 2009
    :cond_0
    :goto_0
    return-void

    .line 1962
    :cond_1
    invoke-static {}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->newBuilder()Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;

    move-result-object v6

    .line 1963
    .local v6, "optionsBuilder":Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;
    iget-object v9, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$TL_invoice;->test:Z

    if-eqz v9, :cond_3

    const/4 v9, 0x3

    :goto_1
    invoke-virtual {v6, v9}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->setEnvironment(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;

    .line 1964
    invoke-virtual {v6, v10}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->setMode(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;

    .line 1966
    new-instance v9, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    invoke-direct {v9}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;-><init>()V

    .line 1967
    invoke-virtual {v9, v11}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->setBuyButtonText(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    move-result-object v9

    .line 1968
    invoke-virtual {v9, v11}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->setBuyButtonAppearance(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    move-result-object v9

    const/4 v11, -0x2

    .line 1969
    invoke-virtual {v9, v11}, Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;->setBuyButtonWidth(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    move-result-object v8

    .line 1971
    .local v8, "walletFragmentStyle":Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
    invoke-virtual {v6, v8}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->setFragmentStyle(Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;)Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;

    .line 1972
    invoke-virtual {v6}, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions$Builder;->build()Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->newInstance(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;)Lcom/google/android/gms/wallet/fragment/WalletFragment;

    move-result-object v7

    .line 1973
    .local v7, "walletFragment":Lcom/google/android/gms/wallet/fragment/WalletFragment;
    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 1974
    .local v2, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 1975
    .local v3, "fragmentTransaction":Landroid/app/FragmentTransaction;
    const/16 v9, 0xfa0

    invoke-virtual {v3, v9, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1976
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 1978
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1979
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;>;"
    iget-object v9, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1980
    iget-object v9, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-eqz v9, :cond_2

    .line 1981
    iget-object v9, p0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->prices:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1983
    :cond_2
    invoke-direct {p0, v1}, Lorg/telegram/ui/PaymentFormActivity;->getTotalPriceDecimalString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/ui/PaymentFormActivity;->totalPriceDecimal:Ljava/lang/String;

    .line 1985
    invoke-static {}, Lcom/google/android/gms/wallet/MaskedWalletRequest;->newBuilder()Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    move-result-object v9

    .line 1986
    invoke-static {}, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;->newBuilder()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;

    move-result-object v11

    .line 1987
    invoke-virtual {v11, v10}, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;->setPaymentMethodTokenizationType(I)Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;

    move-result-object v11

    const-string/jumbo v12, "gateway"

    const-string/jumbo v13, "stripe"

    .line 1988
    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;

    move-result-object v11

    const-string/jumbo v12, "stripe:publishableKey"

    iget-object v13, p0, Lorg/telegram/ui/PaymentFormActivity;->stripeApiKey:Ljava/lang/String;

    .line 1989
    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;

    move-result-object v11

    const-string/jumbo v12, "stripe:version"

    const-string/jumbo v13, "3.5.0"

    .line 1990
    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;

    move-result-object v11

    .line 1991
    invoke-virtual {v11}, Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters$Builder;->build()Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    move-result-object v11

    .line 1986
    invoke-virtual {v9, v11}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->setPaymentMethodTokenizationParameters(Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    move-result-object v9

    iget-object v11, p0, Lorg/telegram/ui/PaymentFormActivity;->totalPriceDecimal:Ljava/lang/String;

    .line 1993
    invoke-virtual {v9, v11}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->setEstimatedTotalPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    move-result-object v9

    iget-object v11, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    .line 1994
    invoke-virtual {v9, v11}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;

    move-result-object v9

    .line 1995
    invoke-virtual {v9}, Lcom/google/android/gms/wallet/MaskedWalletRequest$Builder;->build()Lcom/google/android/gms/wallet/MaskedWalletRequest;

    move-result-object v5

    .line 1997
    .local v5, "maskedWalletRequest":Lcom/google/android/gms/wallet/MaskedWalletRequest;
    invoke-static {}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;->newBuilder()Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;

    move-result-object v9

    .line 1998
    invoke-virtual {v9, v5}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->setMaskedWalletRequest(Lcom/google/android/gms/wallet/MaskedWalletRequest;)Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;

    move-result-object v9

    const/16 v11, 0x3e8

    .line 1999
    invoke-virtual {v9, v11}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->setMaskedWalletRequestCode(I)Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;

    move-result-object v9

    .line 2000
    invoke-virtual {v9}, Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams$Builder;->build()Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;

    move-result-object v4

    .line 2002
    .local v4, "initParams":Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;
    invoke-virtual {v7, v4}, Lcom/google/android/gms/wallet/fragment/WalletFragment;->initialize(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V

    .line 2003
    iget-object v9, p0, Lorg/telegram/ui/PaymentFormActivity;->androidPayContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2004
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2005
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v9, v10, [Landroid/animation/Animator;

    iget-object v10, p0, Lorg/telegram/ui/PaymentFormActivity;->androidPayContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v11, "alpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v9, v14

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2006
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2007
    const-wide/16 v10, 0xb4

    invoke-virtual {v0, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2008
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;>;"
    .end local v2    # "fragmentManager":Landroid/app/FragmentManager;
    .end local v3    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    .end local v4    # "initParams":Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;
    .end local v5    # "maskedWalletRequest":Lcom/google/android/gms/wallet/MaskedWalletRequest;
    .end local v7    # "walletFragment":Lcom/google/android/gms/wallet/fragment/WalletFragment;
    .end local v8    # "walletFragmentStyle":Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
    :cond_3
    move v9, v10

    .line 1963
    goto/16 :goto_1

    .line 2005
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private showEditDoneProgress(ZZ)V
    .locals 10
    .param p1, "animateDoneItem"    # Z
    .param p2, "show"    # Z

    .prologue
    const/4 v9, 0x0

    const v5, 0x3dcccccd    # 0.1f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2614
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 2615
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2617
    :cond_0
    if-eqz p1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_4

    .line 2618
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    .line 2619
    if-eqz p2, :cond_2

    .line 2620
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 2621
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setEnabled(Z)V

    .line 2622
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2623
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    const-string/jumbo v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2624
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    const-string/jumbo v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2625
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2626
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2627
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2628
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2622
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2648
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$32;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/PaymentFormActivity$32;-><init>(Lorg/telegram/ui/PaymentFormActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2667
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2668
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2715
    :cond_1
    :goto_1
    return-void

    .line 2630
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    .line 2631
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 2632
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 2633
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 2634
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2631
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 2636
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2637
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setEnabled(Z)V

    .line 2638
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 2639
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 2640
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 2641
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2642
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    const-string/jumbo v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2643
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    const-string/jumbo v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2644
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2638
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_0

    .line 2669
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2670
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    .line 2671
    if-eqz p2, :cond_5

    .line 2672
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 2673
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2674
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 2675
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 2676
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 2677
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2678
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2679
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2680
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2674
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2693
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/PaymentFormActivity$33;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/PaymentFormActivity$33;-><init>(Lorg/telegram/ui/PaymentFormActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2712
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2713
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1

    .line 2682
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2683
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2684
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->doneItemAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 2685
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    .line 2686
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    .line 2687
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2688
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2689
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    .line 2690
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2684
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_2
.end method

.method private showPayAlert(Ljava/lang/String;)V
    .locals 6
    .param p1, "totalPrice"    # Ljava/lang/String;

    .prologue
    .line 1853
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1854
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v1, "PaymentTransactionReview"

    const v2, 0x7f070561

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1855
    const-string/jumbo v1, "PaymentTransactionMessage"

    const v2, 0x7f070560

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->currentItemName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1856
    const-string/jumbo v1, "OK"

    const v2, 0x7f0704f5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PaymentFormActivity$27;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PaymentFormActivity$27;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1863
    const-string/jumbo v1, "Cancel"

    const v2, 0x7f070105

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1864
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/PaymentFormActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1865
    return-void
.end method

.method private updateSavePaymentField()V
    .locals 11

    .prologue
    const/16 v10, 0x2a

    const/16 v6, 0x8

    const/4 v7, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 2133
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v5, v5, v8

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v5, v5, v9

    if-nez v5, :cond_1

    .line 2166
    :cond_0
    :goto_0
    return-void

    .line 2136
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->password_missing:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->can_save_credentials:Z

    if-eqz v5, :cond_6

    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lorg/telegram/ui/PaymentFormActivity;->webviewLoading:Z

    if-nez v5, :cond_6

    .line 2137
    :cond_3
    new-instance v4, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v5, "PaymentCardSavePaymentInformationInfoLine1"

    const v6, 0x7f07053b

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2138
    .local v4, "text":Landroid/text/SpannableStringBuilder;
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->password_missing:Z

    if-eqz v5, :cond_5

    .line 2139
    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2140
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 2141
    .local v2, "len":I
    const-string/jumbo v5, "PaymentCardSavePaymentInformationInfoLine2"

    const v6, 0x7f07053c

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 2142
    .local v3, "str2":Ljava/lang/String;
    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2143
    .local v0, "index1":I
    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 2144
    .local v1, "index2":I
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2145
    if-eq v0, v7, :cond_4

    if-eq v1, v7, :cond_4

    .line 2146
    add-int/2addr v0, v2

    .line 2147
    add-int/2addr v1, v2

    .line 2148
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/PaymentFormActivity$LinkMovementMethodMy;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lorg/telegram/ui/PaymentFormActivity$LinkMovementMethodMy;-><init>(Lorg/telegram/ui/PaymentFormActivity$1;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2149
    add-int/lit8 v5, v1, 0x1

    const-string/jumbo v6, ""

    invoke-virtual {v4, v1, v5, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2150
    add-int/lit8 v5, v0, 0x1

    const-string/jumbo v6, ""

    invoke-virtual {v4, v0, v5, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2151
    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$LinkSpan;

    invoke-direct {v5, p0}, Lorg/telegram/ui/PaymentFormActivity$LinkSpan;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    add-int/lit8 v6, v1, -0x1

    const/16 v7, 0x21

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2153
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(Z)V

    .line 2157
    .end local v0    # "index1":I
    .end local v1    # "index2":I
    .end local v2    # "len":I
    .end local v3    # "str2":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v5, v5, v8

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 2158
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setVisibility(I)V

    .line 2159
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v5, v5, v8

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setVisibility(I)V

    .line 2160
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v5, v5, v9

    iget-object v6, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v6, v6, v9

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ShadowSectionCell;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0200ac

    const-string/jumbo v8, "windowBackgroundGrayShadow"

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 2155
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(Z)V

    goto :goto_1

    .line 2162
    .end local v4    # "text":Landroid/text/SpannableStringBuilder;
    :cond_6
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setVisibility(I)V

    .line 2163
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v5, v5, v8

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setVisibility(I)V

    .line 2164
    iget-object v5, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v5, v5, v9

    iget-object v6, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v6, v6, v9

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ShadowSectionCell;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0200ad

    const-string/jumbo v8, "windowBackgroundGrayShadow"

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 45
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "AddJavascriptInterface"
        }
    .end annotation

    .prologue
    .line 414
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    if-nez v4, :cond_a

    .line 415
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "PaymentShippingInfo"

    const v6, 0x7f070554

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 436
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v5, 0x7f0200bc

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 437
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 439
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/PaymentFormActivity$1;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v30

    .line 476
    .local v30, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 477
    :cond_1
    const/4 v4, 0x1

    const v5, 0x7f0200de

    const/high16 v6, 0x42600000    # 56.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 478
    new-instance v4, Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v5}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    .line 479
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v6, -0x1

    const/high16 v7, -0x40800000    # -1.0f

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 483
    :cond_2
    new-instance v4, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->fragmentView:Landroid/view/View;

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity;->fragmentView:Landroid/view/View;

    move-object/from16 v24, v0

    check-cast v24, Landroid/widget/FrameLayout;

    .line 485
    .local v24, "frameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->fragmentView:Landroid/view/View;

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_11

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_1
    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 487
    new-instance v4, Landroid/widget/ScrollView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->scrollView:Landroid/widget/ScrollView;

    .line 488
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->scrollView:Landroid/widget/ScrollView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 489
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->scrollView:Landroid/widget/ScrollView;

    const-string/jumbo v5, "actionBarDefault"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity;->scrollView:Landroid/widget/ScrollView;

    move-object/from16 v43, v0

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/16 v6, 0x33

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/16 v44, 0x4

    move/from16 v0, v44

    if-ne v10, v0, :cond_12

    const/high16 v10, 0x42400000    # 48.0f

    :goto_2
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v24

    move-object/from16 v1, v43

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    .line 493
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 494
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->scrollView:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    if-nez v4, :cond_33

    .line 497
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    .line 498
    .local v28, "languageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 500
    .local v20, "countryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v36, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string/jumbo v6, "countries.txt"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 502
    .local v36, "reader":Ljava/io/BufferedReader;
    :goto_3
    invoke-virtual/range {v36 .. v36}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v29

    .local v29, "line":Ljava/lang/String;
    if-eqz v29, :cond_13

    .line 503
    const-string/jumbo v4, ";"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 504
    .local v14, "args":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v6, 0x2

    aget-object v6, v14, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->countriesMap:Ljava/util/HashMap;

    const/4 v5, 0x2

    aget-object v5, v14, v5

    const/4 v6, 0x0

    aget-object v6, v14, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    const/4 v5, 0x0

    aget-object v5, v14, v5

    const/4 v6, 0x2

    aget-object v6, v14, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const/4 v4, 0x1

    aget-object v4, v14, v4

    const/4 v5, 0x2

    aget-object v5, v14, v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    array-length v4, v14

    const/4 v5, 0x3

    if-le v4, v5, :cond_3

    .line 509
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->phoneFormatMap:Ljava/util/HashMap;

    const/4 v5, 0x0

    aget-object v5, v14, v5

    const/4 v6, 0x3

    aget-object v6, v14, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    :cond_3
    const/4 v4, 0x1

    aget-object v4, v14, v4

    const/4 v5, 0x2

    aget-object v5, v14, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 514
    .end local v14    # "args":[Ljava/lang/String;
    .end local v29    # "line":Ljava/lang/String;
    .end local v36    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v23

    .line 515
    .local v23, "e":Ljava/lang/Exception;
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 518
    .end local v23    # "e":Ljava/lang/Exception;
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/PaymentFormActivity$2;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 525
    const/16 v4, 0xa

    new-array v4, v4, [Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    .line 526
    const/4 v11, 0x0

    .local v11, "a":I
    :goto_5
    const/16 v4, 0xa

    if-ge v11, v4, :cond_23

    .line 527
    if-nez v11, :cond_14

    .line 528
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v5, 0x0

    new-instance v6, Lorg/telegram/ui/Cells/HeaderCell;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    .line 529
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const-string/jumbo v5, "windowBackgroundWhite"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setBackgroundColor(I)V

    .line 530
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const-string/jumbo v5, "PaymentShippingAddress"

    const v6, 0x7f07054e

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    .line 531
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    :cond_4
    :goto_6
    const/16 v4, 0x8

    if-ne v11, v4, :cond_15

    .line 543
    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v16, "container":Landroid/view/ViewGroup;
    move-object/from16 v4, v16

    .line 544
    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 545
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v5, -0x1

    const/16 v6, 0x30

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 546
    const-string/jumbo v4, "windowBackgroundWhite"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 570
    :cond_5
    :goto_7
    const/16 v4, 0x9

    if-ne v11, v4, :cond_1a

    .line 571
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    new-instance v5, Lorg/telegram/ui/Components/HintEditText;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/HintEditText;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v11

    .line 575
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const/4 v5, 0x1

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 577
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v5, v4, v11

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_1b

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->prefSummaryColor:I

    :goto_9
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 578
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v5, v4, v11

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_1c

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->prefTitleColor:I

    :goto_a
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 579
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 581
    const/4 v4, 0x4

    if-ne v11, v4, :cond_6

    .line 582
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/PaymentFormActivity$3;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 604
    :cond_6
    const/16 v4, 0x9

    if-eq v11, v4, :cond_7

    const/16 v4, 0x8

    if-ne v11, v4, :cond_1d

    .line 605
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 611
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const v5, 0x10000005

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 612
    packed-switch v11, :pswitch_data_0

    .line 664
    :cond_8
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v5, v5, v11

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 666
    const/16 v4, 0x8

    if-ne v11, v4, :cond_20

    .line 667
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    .line 668
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    const-string/jumbo v5, "+"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    const-string/jumbo v5, "windowBackgroundWhiteBlackText"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 670
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    const/4 v5, 0x1

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 671
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/high16 v6, 0x41880000    # 17.0f

    const/high16 v7, 0x41400000    # 12.0f

    const/4 v8, 0x0

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 674
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 675
    const/4 v4, 0x1

    new-array v0, v4, [Landroid/text/InputFilter;

    move-object/from16 v26, v0

    .line 676
    .local v26, "inputFilters":[Landroid/text/InputFilter;
    const/4 v4, 0x0

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v26, v4

    .line 677
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v10, v4, v11

    const/16 v4, 0x37

    const/4 v5, -0x2

    const/4 v6, 0x0

    const/high16 v7, 0x41400000    # 12.0f

    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/PaymentFormActivity$4;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 835
    .end local v26    # "inputFilters":[Landroid/text/InputFilter;
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/PaymentFormActivity$6;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 855
    const/16 v4, 0x9

    if-ne v11, v4, :cond_9

    .line 856
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v5, 0x1

    new-instance v6, Lorg/telegram/ui/Cells/ShadowSectionCell;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    .line 857
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 859
    new-instance v4, Lorg/telegram/ui/Cells/TextCheckCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 860
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v5, 0x1

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 861
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const-string/jumbo v5, "PaymentShippingSave"

    const v6, 0x7f070559

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 862
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 863
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/PaymentFormActivity$7;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 871
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v5, 0x0

    new-instance v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    .line 872
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const v5, 0x7f0200ad

    const-string/jumbo v6, "windowBackgroundGrayShadow"

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 873
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const-string/jumbo v5, "PaymentShippingSaveInfo"

    const v6, 0x7f07055a

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 874
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 416
    .end local v11    # "a":I
    .end local v16    # "container":Landroid/view/ViewGroup;
    .end local v20    # "countryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v28    # "languageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v30    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 417
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "PaymentShippingMethod"

    const v6, 0x7f070555

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 418
    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    .line 419
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "PaymentCardInfo"

    const v6, 0x7f070536

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 420
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_d

    .line 421
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "PaymentCardInfo"

    const v6, 0x7f070536

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 422
    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_f

    .line 423
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->test:Z

    if-eqz v4, :cond_e

    .line 424
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Test "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "PaymentCheckout"

    const v7, 0x7f07053e

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 426
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "PaymentCheckout"

    const v6, 0x7f07053e

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 428
    :cond_f
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 429
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->test:Z

    if-eqz v4, :cond_10

    .line 430
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Test "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "PaymentReceipt"

    const v7, 0x7f07054d

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 432
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "PaymentReceipt"

    const v6, 0x7f07054d

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 485
    .restart local v24    # "frameLayout":Landroid/widget/FrameLayout;
    .restart local v30    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_11
    const-string/jumbo v4, "windowBackgroundGray"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_1

    .line 490
    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 513
    .restart local v20    # "countryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v28    # "languageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v29    # "line":Ljava/lang/String;
    .restart local v36    # "reader":Ljava/io/BufferedReader;
    :cond_13
    :try_start_1
    invoke-virtual/range {v36 .. v36}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 532
    .end local v29    # "line":Ljava/lang/String;
    .end local v36    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "a":I
    :cond_14
    const/4 v4, 0x6

    if-ne v11, v4, :cond_4

    .line 533
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v5, 0x0

    new-instance v6, Lorg/telegram/ui/Cells/ShadowSectionCell;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    .line 534
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v5, 0x1

    new-instance v6, Lorg/telegram/ui/Cells/HeaderCell;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    .line 537
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const-string/jumbo v5, "windowBackgroundWhite"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setBackgroundColor(I)V

    .line 538
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const-string/jumbo v5, "PaymentShippingReceiver"

    const v6, 0x7f070558

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    .line 547
    :cond_15
    const/16 v4, 0x9

    if-ne v11, v4, :cond_16

    .line 548
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .restart local v16    # "container":Landroid/view/ViewGroup;
    goto/16 :goto_7

    .line 550
    .end local v16    # "container":Landroid/view/ViewGroup;
    :cond_16
    new-instance v16, Landroid/widget/FrameLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 551
    .restart local v16    # "container":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v5, -0x1

    const/16 v6, 0x30

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    const-string/jumbo v4, "windowBackgroundWhite"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 554
    const/4 v4, 0x5

    if-eq v11, v4, :cond_18

    const/16 v4, 0x9

    if-eq v11, v4, :cond_18

    const/4 v13, 0x1

    .line 555
    .local v13, "allowDivider":Z
    :goto_e
    if-eqz v13, :cond_17

    .line 556
    const/4 v4, 0x7

    if-ne v11, v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v4, :cond_19

    .line 557
    const/4 v13, 0x0

    .line 562
    :cond_17
    :goto_f
    if-eqz v13, :cond_5

    .line 563
    new-instance v22, Landroid/view/View;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 564
    .local v22, "divider":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    const-string/jumbo v4, "divider"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 566
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/16 v7, 0x53

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_7

    .line 554
    .end local v13    # "allowDivider":Z
    .end local v22    # "divider":Landroid/view/View;
    :cond_18
    const/4 v13, 0x0

    goto :goto_e

    .line 558
    .restart local v13    # "allowDivider":Z
    :cond_19
    const/4 v4, 0x6

    if-ne v11, v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-nez v4, :cond_17

    .line 559
    const/4 v13, 0x0

    goto :goto_f

    .line 573
    .end local v13    # "allowDivider":Z
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    new-instance v5, Landroid/widget/EditText;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v11

    goto/16 :goto_8

    .line 577
    :cond_1b
    const-string/jumbo v4, "windowBackgroundWhiteHintText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_9

    .line 578
    :cond_1c
    const-string/jumbo v4, "windowBackgroundWhiteBlackText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_a

    .line 606
    :cond_1d
    const/4 v4, 0x7

    if-ne v11, v4, :cond_1e

    .line 607
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_b

    .line 609
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const/16 v5, 0x4001

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_b

    .line 614
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const-string/jumbo v5, "PaymentShippingName"

    const v6, 0x7f070556

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 615
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 616
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 620
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const-string/jumbo v5, "PaymentShippingEmailPlaceholder"

    const v6, 0x7f070553

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 622
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 626
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const-string/jumbo v5, "PaymentShippingAddress1Placeholder"

    const v6, 0x7f07054f

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v4, :cond_8

    .line 628
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 632
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const-string/jumbo v5, "PaymentShippingAddress2Placeholder"

    const v6, 0x7f070550

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 633
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v4, :cond_8

    .line 634
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 638
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const-string/jumbo v5, "PaymentShippingCityPlaceholder"

    const v6, 0x7f070551

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v4, :cond_8

    .line 640
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->city:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 644
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const-string/jumbo v5, "PaymentShippingStatePlaceholder"

    const v6, 0x7f07055b

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 645
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v4, :cond_8

    .line 646
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->state:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 650
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const-string/jumbo v5, "PaymentShippingCountry"

    const v6, 0x7f070552

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v4, :cond_8

    .line 652
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->country_iso2:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    .line 653
    .local v42, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->country_iso2:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->countryName:Ljava/lang/String;

    .line 654
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    if-eqz v42, :cond_1f

    .end local v42    # "value":Ljava/lang/String;
    :goto_10
    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .restart local v42    # "value":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity;->countryName:Ljava/lang/String;

    move-object/from16 v42, v0

    goto :goto_10

    .line 658
    .end local v42    # "value":Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const-string/jumbo v5, "PaymentShippingZipPlaceholder"

    const v6, 0x7f07055c

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v4, :cond_8

    .line 660
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->post_code:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 751
    :cond_20
    const/16 v4, 0x9

    if-ne v11, v4, :cond_21

    .line 752
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 753
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 754
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v10, v4, v11

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v6, 0x0

    const/high16 v7, 0x41400000    # 12.0f

    const/high16 v8, 0x41880000    # 17.0f

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 755
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/PaymentFormActivity$5;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_d

    .line 830
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 831
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v5, v4, v11

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_22

    const/4 v4, 0x5

    :goto_11
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setGravity(I)V

    .line 832
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v43, v4, v11

    const/4 v4, -0x1

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x33

    const/high16 v7, 0x41880000    # 17.0f

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v9, 0x41880000    # 17.0f

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, v43

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_d

    .line 831
    :cond_22
    const/4 v4, 0x3

    goto :goto_11

    .line 878
    .end local v16    # "container":Landroid/view/ViewGroup;
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-nez v4, :cond_24

    .line 879
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 881
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v4, :cond_25

    .line 882
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 884
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-nez v4, :cond_26

    .line 885
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 888
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-eqz v4, :cond_2d

    .line 889
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    const v5, 0x10000006

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 898
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v5, 0x1

    aget-object v5, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-nez v4, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v4, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-eqz v4, :cond_30

    :cond_27
    const/4 v4, 0x0

    :goto_13
    invoke-virtual {v5, v4}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setVisibility(I)V

    .line 899
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v5, 0x1

    aget-object v5, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-nez v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-eqz v4, :cond_31

    :cond_28
    const/4 v4, 0x0

    :goto_14
    invoke-virtual {v5, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setVisibility(I)V

    .line 900
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->shipping_address_requested:Z

    if-nez v4, :cond_29

    .line 901
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setVisibility(I)V

    .line 902
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setVisibility(I)V

    .line 903
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 904
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 905
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 906
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 907
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 908
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 911
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v4, :cond_32

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 912
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/PaymentFormActivity;->fillNumber(Ljava/lang/String;)V

    .line 917
    :goto_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-nez v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    if-eqz v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 918
    :cond_2a
    const/16 v19, 0x0

    .line 921
    .local v19, "country":Ljava/lang/String;
    :try_start_2
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/telephony/TelephonyManager;

    .line 922
    .local v39, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v39, :cond_2b

    .line 923
    invoke-virtual/range {v39 .. v39}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v19

    .line 929
    .end local v39    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2b
    :goto_16
    if-eqz v19, :cond_2c

    .line 930
    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 931
    .local v21, "countryName":Ljava/lang/String;
    if-eqz v21, :cond_2c

    .line 932
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->countriesArray:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v25

    .line 933
    .local v25, "index":I
    const/4 v4, -0x1

    move/from16 v0, v25

    if-eq v0, v4, :cond_2c

    .line 934
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v5, 0x8

    aget-object v5, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->countriesMap:Ljava/util/HashMap;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1849
    .end local v11    # "a":I
    .end local v19    # "country":Ljava/lang/String;
    .end local v20    # "countryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "countryName":Ljava/lang/String;
    .end local v25    # "index":I
    .end local v28    # "languageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2c
    :goto_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->fragmentView:Landroid/view/View;

    return-object v4

    .line 890
    .restart local v11    # "a":I
    .restart local v20    # "countryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v28    # "languageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-eqz v4, :cond_2e

    .line 891
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    const v5, 0x10000006

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_12

    .line 892
    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->name_requested:Z

    if-eqz v4, :cond_2f

    .line 893
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    const v5, 0x10000006

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_12

    .line 895
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const v5, 0x10000006

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_12

    .line 898
    :cond_30
    const/16 v4, 0x8

    goto/16 :goto_13

    .line 899
    :cond_31
    const/16 v4, 0x8

    goto/16 :goto_14

    .line 914
    :cond_32
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/PaymentFormActivity;->fillNumber(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 925
    .restart local v19    # "country":Ljava/lang/String;
    :catch_1
    move-exception v23

    .line 926
    .restart local v23    # "e":Ljava/lang/Exception;
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 939
    .end local v11    # "a":I
    .end local v19    # "country":Ljava/lang/String;
    .end local v20    # "countryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "e":Ljava/lang/Exception;
    .end local v28    # "languageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_33
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_51

    .line 940
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->isWebView:Z

    if-eqz v4, :cond_35

    .line 941
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->webviewLoading:Z

    .line 942
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 943
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 944
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setEnabled(Z)V

    .line 945
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 946
    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/PaymentFormActivity$8;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    .line 953
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 954
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 956
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_34

    .line 957
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 958
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v17

    .line 959
    .local v17, "cookieManager":Landroid/webkit/CookieManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 961
    .end local v17    # "cookieManager":Landroid/webkit/CookieManager;
    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lorg/telegram/ui/PaymentFormActivity$TelegramWebviewProxy;-><init>(Lorg/telegram/ui/PaymentFormActivity;Lorg/telegram/ui/PaymentFormActivity$1;)V

    const-string/jumbo v6, "TelegramWebviewProxy"

    invoke-virtual {v4, v5, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 962
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/PaymentFormActivity$9;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 977
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    const/4 v6, -0x1

    const/high16 v7, -0x40000000    # -2.0f

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 979
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v5, 0x2

    new-instance v6, Lorg/telegram/ui/Cells/ShadowSectionCell;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    .line 980
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 982
    new-instance v4, Lorg/telegram/ui/Cells/TextCheckCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 983
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v5, 0x1

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 984
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const-string/jumbo v5, "PaymentCardSavePaymentInformation"

    const v6, 0x7f07053a

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 985
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 986
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/PaymentFormActivity$10;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 994
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v5, 0x0

    new-instance v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    .line 995
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const v5, 0x7f0200ad

    const-string/jumbo v6, "windowBackgroundGrayShadow"

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 996
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    .line 997
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_17

    .line 1000
    :cond_35
    :try_start_3
    new-instance v27, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1002
    .local v27, "jsonObject":Lorg/json/JSONObject;
    :try_start_4
    const-string/jumbo v4, "need_country"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_country:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1007
    :goto_18
    :try_start_5
    const-string/jumbo v4, "need_zip"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1012
    :goto_19
    :try_start_6
    const-string/jumbo v4, "need_cardholder_name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_name:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 1017
    :goto_1a
    :try_start_7
    const-string/jumbo v4, "publishable_key"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->stripeApiKey:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 1025
    .end local v27    # "jsonObject":Lorg/json/JSONObject;
    :goto_1b
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_36

    .line 1026
    new-instance v4, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/PaymentFormActivity$12;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    .line 1027
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/PaymentFormActivity$11;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    .line 1038
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/wallet/Wallet;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v7, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    invoke-direct {v7}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->test:Z

    if-eqz v4, :cond_40

    const/4 v4, 0x3

    .line 1045
    :goto_1c
    invoke-virtual {v7, v4}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->setEnvironment(I)Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    move-result-object v4

    const/4 v7, 0x1

    .line 1046
    invoke-virtual {v4, v7}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->setTheme(I)Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    move-result-object v4

    .line 1047
    invoke-virtual {v4}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->build()Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    move-result-object v4

    .line 1044
    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v4

    .line 1048
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 1050
    sget-object v4, Lcom/google/android/gms/wallet/Wallet;->Payments:Lcom/google/android/gms/wallet/Payments;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v4, v5}, Lcom/google/android/gms/wallet/Payments;->isReadyToPay(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/PaymentFormActivity$13;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 1067
    :cond_36
    const/4 v4, 0x6

    new-array v4, v4, [Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    .line 1068
    const/4 v11, 0x0

    .restart local v11    # "a":I
    :goto_1d
    const/4 v4, 0x6

    if-ge v11, v4, :cond_4e

    .line 1069
    if-nez v11, :cond_41

    .line 1070
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v5, 0x0

    new-instance v6, Lorg/telegram/ui/Cells/HeaderCell;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    .line 1071
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const-string/jumbo v5, "windowBackgroundWhite"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setBackgroundColor(I)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const-string/jumbo v5, "PaymentCardTitle"

    const v6, 0x7f07053d

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1081
    :cond_37
    :goto_1e
    const/4 v4, 0x3

    if-eq v11, v4, :cond_42

    const/4 v4, 0x5

    if-eq v11, v4, :cond_42

    const/4 v4, 0x4

    if-ne v11, v4, :cond_38

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z

    if-eqz v4, :cond_42

    :cond_38
    const/4 v13, 0x1

    .line 1082
    .restart local v13    # "allowDivider":Z
    :goto_1f
    new-instance v16, Landroid/widget/FrameLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1083
    .restart local v16    # "container":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v5, -0x1

    const/16 v6, 0x30

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1084
    const-string/jumbo v4, "windowBackgroundWhite"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1086
    const/16 v31, 0x0

    .line 1087
    .local v31, "onTouchListener":Landroid/view/View$OnTouchListener;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    new-instance v5, Landroid/widget/EditText;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v11

    .line 1088
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const/4 v5, 0x1

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1090
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v5, v4, v11

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_43

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->prefSummaryColor:I

    :goto_20
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1091
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v5, v4, v11

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_44

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->prefTitleColor:I

    :goto_21
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1093
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 1094
    const/4 v4, 0x3

    if-ne v11, v4, :cond_45

    .line 1095
    const/4 v4, 0x1

    new-array v0, v4, [Landroid/text/InputFilter;

    move-object/from16 v26, v0

    .line 1096
    .restart local v26    # "inputFilters":[Landroid/text/InputFilter;
    const/4 v4, 0x0

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v26, v4

    .line 1097
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1098
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const/16 v5, 0x82

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1131
    .end local v26    # "inputFilters":[Landroid/text/InputFilter;
    :goto_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const v5, 0x10000005

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1132
    packed-switch v11, :pswitch_data_1

    .line 1153
    :goto_23
    if-nez v11, :cond_4a

    .line 1154
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$15;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/PaymentFormActivity$15;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1424
    :cond_39
    :goto_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1425
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v5, v4, v11

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_4b

    const/4 v4, 0x5

    :goto_25
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setGravity(I)V

    .line 1426
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v43, v4, v11

    const/4 v4, -0x1

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x33

    const/high16 v7, 0x41880000    # 17.0f

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v9, 0x41880000    # 17.0f

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, v43

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1428
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$17;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/PaymentFormActivity$17;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1451
    const/4 v4, 0x3

    if-ne v11, v4, :cond_4c

    .line 1452
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v5, 0x0

    new-instance v6, Lorg/telegram/ui/Cells/ShadowSectionCell;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    .line 1453
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1482
    :cond_3a
    :goto_26
    if-eqz v13, :cond_3b

    .line 1483
    new-instance v22, Landroid/view/View;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1484
    .restart local v22    # "divider":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1485
    const-string/jumbo v4, "divider"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1486
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/16 v7, 0x53

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1489
    .end local v22    # "divider":Landroid/view/View;
    :cond_3b
    const/4 v4, 0x4

    if-ne v11, v4, :cond_3c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_country:Z

    if-eqz v4, :cond_3e

    :cond_3c
    const/4 v4, 0x5

    if-ne v11, v4, :cond_3d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z

    if-eqz v4, :cond_3e

    :cond_3d
    const/4 v4, 0x2

    if-ne v11, v4, :cond_3f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_name:Z

    if-nez v4, :cond_3f

    .line 1490
    :cond_3e
    const/16 v4, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1068
    :cond_3f
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1d

    .line 1003
    .end local v11    # "a":I
    .end local v13    # "allowDivider":Z
    .end local v16    # "container":Landroid/view/ViewGroup;
    .end local v31    # "onTouchListener":Landroid/view/View$OnTouchListener;
    .restart local v27    # "jsonObject":Lorg/json/JSONObject;
    :catch_2
    move-exception v23

    .line 1004
    .restart local v23    # "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_country:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_18

    .line 1021
    .end local v23    # "e":Ljava/lang/Exception;
    .end local v27    # "jsonObject":Lorg/json/JSONObject;
    :catch_3
    move-exception v23

    .line 1022
    .restart local v23    # "e":Ljava/lang/Exception;
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 1008
    .end local v23    # "e":Ljava/lang/Exception;
    .restart local v27    # "jsonObject":Lorg/json/JSONObject;
    :catch_4
    move-exception v23

    .line 1009
    .restart local v23    # "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_9
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z

    goto/16 :goto_19

    .line 1013
    .end local v23    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v23

    .line 1014
    .restart local v23    # "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_name:Z

    goto/16 :goto_1a

    .line 1018
    .end local v23    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v23

    .line 1019
    .restart local v23    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, ""

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->stripeApiKey:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_1b

    .line 1038
    .end local v23    # "e":Ljava/lang/Exception;
    .end local v27    # "jsonObject":Lorg/json/JSONObject;
    :cond_40
    const/4 v4, 0x1

    goto/16 :goto_1c

    .line 1074
    .restart local v11    # "a":I
    :cond_41
    const/4 v4, 0x4

    if-ne v11, v4, :cond_37

    .line 1075
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v5, 0x1

    new-instance v6, Lorg/telegram/ui/Cells/HeaderCell;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    .line 1076
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const-string/jumbo v5, "windowBackgroundWhite"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setBackgroundColor(I)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const-string/jumbo v5, "PaymentBillingAddress"

    const v6, 0x7f070533

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1e

    .line 1081
    :cond_42
    const/4 v13, 0x0

    goto/16 :goto_1f

    .line 1090
    .restart local v13    # "allowDivider":Z
    .restart local v16    # "container":Landroid/view/ViewGroup;
    .restart local v31    # "onTouchListener":Landroid/view/View$OnTouchListener;
    :cond_43
    const-string/jumbo v4, "windowBackgroundWhiteHintText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_20

    .line 1091
    :cond_44
    const-string/jumbo v4, "windowBackgroundWhiteBlackText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_21

    .line 1101
    :cond_45
    if-nez v11, :cond_46

    .line 1102
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_22

    .line 1103
    :cond_46
    const/4 v4, 0x4

    if-ne v11, v4, :cond_47

    .line 1104
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/PaymentFormActivity$14;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1123
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_22

    .line 1124
    :cond_47
    const/4 v4, 0x1

    if-ne v11, v4, :cond_48

    .line 1125
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const/16 v5, 0x4002

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_22

    .line 1126
    :cond_48
    const/4 v4, 0x2

    if-ne v11, v4, :cond_49

    .line 1127
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const/16 v5, 0x1001

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_22

    .line 1129
    :cond_49
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const/16 v5, 0x4001

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_22

    .line 1134
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const-string/jumbo v5, "PaymentCardNumber"

    const v6, 0x7f070539

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 1137
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const-string/jumbo v5, "PaymentCardCvv"

    const v6, 0x7f070534

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 1140
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const-string/jumbo v5, "PaymentCardExpireDate"

    const v6, 0x7f070535

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 1143
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const-string/jumbo v5, "PaymentCardName"

    const v6, 0x7f070537

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 1146
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const-string/jumbo v5, "PaymentShippingZipPlaceholder"

    const v6, 0x7f07055c

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 1149
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const-string/jumbo v5, "PaymentShippingCountry"

    const v6, 0x7f070552

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 1307
    :cond_4a
    const/4 v4, 0x1

    if-ne v11, v4, :cond_39

    .line 1308
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$16;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/PaymentFormActivity$16;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_24

    .line 1425
    :cond_4b
    const/4 v4, 0x3

    goto/16 :goto_25

    .line 1454
    :cond_4c
    const/4 v4, 0x5

    if-ne v11, v4, :cond_4d

    .line 1455
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v5, 0x2

    new-instance v6, Lorg/telegram/ui/Cells/ShadowSectionCell;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    .line 1456
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1458
    new-instance v4, Lorg/telegram/ui/Cells/TextCheckCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1459
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v5, 0x1

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1460
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const-string/jumbo v5, "PaymentCardSavePaymentInformation"

    const v6, 0x7f07053a

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 1461
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1462
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$18;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/PaymentFormActivity$18;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1470
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v5, 0x0

    new-instance v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    .line 1471
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const v5, 0x7f0200ad

    const-string/jumbo v6, "windowBackgroundGrayShadow"

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1472
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    .line 1473
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_26

    .line 1474
    :cond_4d
    if-nez v11, :cond_3a

    .line 1475
    new-instance v4, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->androidPayContainer:Landroid/widget/FrameLayout;

    .line 1476
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->androidPayContainer:Landroid/widget/FrameLayout;

    const/16 v5, 0xfa0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1477
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->androidPayContainer:Landroid/widget/FrameLayout;

    const/4 v5, 0x1

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1478
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->androidPayContainer:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity;->androidPayContainer:Landroid/widget/FrameLayout;

    move-object/from16 v43, v0

    const/4 v4, -0x2

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x15

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x40800000    # 4.0f

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, v43

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_26

    .line 1493
    .end local v13    # "allowDivider":Z
    .end local v16    # "container":Landroid/view/ViewGroup;
    .end local v31    # "onTouchListener":Landroid/view/View$OnTouchListener;
    :cond_4e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_country:Z

    if-nez v4, :cond_4f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z

    if-nez v4, :cond_4f

    .line 1494
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setVisibility(I)V

    .line 1495
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setVisibility(I)V

    .line 1497
    :cond_4f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/PaymentFormActivity;->need_card_postcode:Z

    if-eqz v4, :cond_50

    .line 1498
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const v5, 0x10000006

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_17

    .line 1500
    :cond_50
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const v5, 0x10000006

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_17

    .line 1503
    .end local v11    # "a":I
    :cond_51
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_55

    .line 1504
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->shipping_options:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 1505
    .local v18, "count":I
    move/from16 v0, v18

    new-array v4, v0, [Lorg/telegram/ui/Cells/RadioCell;

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    .line 1506
    const/4 v11, 0x0

    .restart local v11    # "a":I
    :goto_27
    move/from16 v0, v18

    if-ge v11, v0, :cond_54

    .line 1507
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->requestedInfo:Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_validatedRequestedInfo;->shipping_options:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    .line 1508
    .local v38, "shippingOption":Lorg/telegram/tgnet/TLRPC$TL_shippingOption;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    new-instance v5, Lorg/telegram/ui/Cells/RadioCell;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lorg/telegram/ui/Cells/RadioCell;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v11

    .line 1509
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v4, v4, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/RadioCell;->setTag(Ljava/lang/Object;)V

    .line 1510
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v4, v4, v11

    const/4 v5, 0x1

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/RadioCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1511
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v6, v4, v11

    const-string/jumbo v4, "%s - %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v38

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->prices:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/telegram/ui/PaymentFormActivity;->getTotalPriceString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, v38

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->title:Ljava/lang/String;

    aput-object v8, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    if-nez v11, :cond_52

    const/4 v4, 0x1

    move v5, v4

    :goto_28
    add-int/lit8 v4, v18, -0x1

    if-eq v11, v4, :cond_53

    const/4 v4, 0x1

    :goto_29
    invoke-virtual {v6, v7, v5, v4}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    .line 1512
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v4, v4, v11

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$19;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/PaymentFormActivity$19;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/RadioCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1521
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v5, v5, v11

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1506
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_27

    .line 1511
    :cond_52
    const/4 v4, 0x0

    move v5, v4

    goto :goto_28

    :cond_53
    const/4 v4, 0x0

    goto :goto_29

    .line 1523
    .end local v38    # "shippingOption":Lorg/telegram/tgnet/TLRPC$TL_shippingOption;
    :cond_54
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v5, 0x0

    new-instance v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    .line 1524
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const v5, 0x7f0200ad

    const-string/jumbo v6, "windowBackgroundGrayShadow"

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1525
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_17

    .line 1526
    .end local v11    # "a":I
    .end local v18    # "count":I
    :cond_55
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_60

    .line 1527
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    .line 1528
    const/4 v11, 0x0

    .restart local v11    # "a":I
    :goto_2a
    const/4 v4, 0x2

    if-ge v11, v4, :cond_2c

    .line 1529
    if-nez v11, :cond_56

    .line 1530
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v5, 0x0

    new-instance v6, Lorg/telegram/ui/Cells/HeaderCell;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    .line 1531
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const-string/jumbo v5, "windowBackgroundWhite"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setBackgroundColor(I)V

    .line 1532
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const-string/jumbo v5, "PaymentCardTitle"

    const v6, 0x7f07053d

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    .line 1533
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1536
    :cond_56
    new-instance v16, Landroid/widget/FrameLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1537
    .restart local v16    # "container":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v5, -0x1

    const/16 v6, 0x30

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1538
    const-string/jumbo v4, "windowBackgroundWhite"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1540
    const/4 v4, 0x1

    if-eq v11, v4, :cond_5a

    const/4 v13, 0x1

    .line 1541
    .restart local v13    # "allowDivider":Z
    :goto_2b
    if-eqz v13, :cond_57

    .line 1542
    const/4 v4, 0x7

    if-ne v11, v4, :cond_5b

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v4, :cond_5b

    .line 1543
    const/4 v13, 0x0

    .line 1548
    :cond_57
    :goto_2c
    if-eqz v13, :cond_58

    .line 1549
    new-instance v22, Landroid/view/View;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1550
    .restart local v22    # "divider":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1551
    const-string/jumbo v4, "divider"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1552
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/16 v7, 0x53

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1555
    .end local v22    # "divider":Landroid/view/View;
    :cond_58
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    new-instance v5, Landroid/widget/EditText;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v11

    .line 1556
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1557
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const/4 v5, 0x1

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1558
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v5, v4, v11

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_5c

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->prefSummaryColor:I

    :goto_2d
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1559
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v5, v4, v11

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_5d

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->prefTitleColor:I

    :goto_2e
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1560
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1561
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 1562
    if-nez v11, :cond_5e

    .line 1563
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$20;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/PaymentFormActivity$20;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1569
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 1574
    :goto_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const v5, 0x10000006

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1575
    packed-switch v11, :pswitch_data_2

    .line 1585
    :goto_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1586
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v5, v4, v11

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_5f

    const/4 v4, 0x5

    :goto_31
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setGravity(I)V

    .line 1587
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v43, v4, v11

    const/4 v4, -0x1

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x33

    const/high16 v7, 0x41880000    # 17.0f

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v9, 0x41880000    # 17.0f

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, v43

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1589
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$21;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/PaymentFormActivity$21;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1599
    const/4 v4, 0x1

    if-ne v11, v4, :cond_59

    .line 1600
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v5, 0x0

    new-instance v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    .line 1601
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const-string/jumbo v5, "PaymentConfirmationMessage"

    const v6, 0x7f070546

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->title:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1602
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const v5, 0x7f0200ac

    const-string/jumbo v6, "windowBackgroundGrayShadow"

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1603
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1605
    new-instance v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell1:Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1606
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell1:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v5, 0x1

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1607
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell1:Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string/jumbo v5, "PaymentConfirmationNewCard"

    const v6, 0x7f070547

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    .line 1608
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell1:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1609
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell1:Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$22;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/PaymentFormActivity$22;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1617
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v5, 0x1

    new-instance v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    .line 1618
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const v5, 0x7f0200ad

    const-string/jumbo v6, "windowBackgroundGrayShadow"

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1619
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1528
    :cond_59
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2a

    .line 1540
    .end local v13    # "allowDivider":Z
    :cond_5a
    const/4 v13, 0x0

    goto/16 :goto_2b

    .line 1544
    .restart local v13    # "allowDivider":Z
    :cond_5b
    const/4 v4, 0x6

    if-ne v11, v4, :cond_57

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->phone_requested:Z

    if-nez v4, :cond_57

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->email_requested:Z

    if-nez v4, :cond_57

    .line 1545
    const/4 v13, 0x0

    goto/16 :goto_2c

    .line 1558
    :cond_5c
    const-string/jumbo v4, "windowBackgroundWhiteHintText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_2d

    .line 1559
    :cond_5d
    const-string/jumbo v4, "windowBackgroundWhiteBlackText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_2e

    .line 1571
    :cond_5e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const/16 v5, 0x81

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 1572
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2f

    .line 1577
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_30

    .line 1580
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    const-string/jumbo v5, "LoginPassword"

    const v6, 0x7f0703f7

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1581
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_30

    .line 1586
    :cond_5f
    const/4 v4, 0x3

    goto/16 :goto_31

    .line 1622
    .end local v11    # "a":I
    .end local v13    # "allowDivider":Z
    .end local v16    # "container":Landroid/view/ViewGroup;
    :cond_60
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_61

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2c

    .line 1623
    :cond_61
    new-instance v4, Lorg/telegram/ui/Cells/PaymentInfoCell;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Cells/PaymentInfoCell;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    .line 1624
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    const-string/jumbo v5, "windowBackgroundWhite"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/PaymentInfoCell;->setBackgroundColor(I)V

    .line 1625
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->currentBotName:Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Lorg/telegram/ui/Cells/PaymentInfoCell;->setInvoice(Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;Ljava/lang/String;)V

    .line 1626
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1628
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v5, 0x0

    new-instance v6, Lorg/telegram/ui/Cells/ShadowSectionCell;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    .line 1629
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1631
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1632
    .local v15, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1633
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-eqz v4, :cond_62

    .line 1634
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->prices:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1636
    :cond_62
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/ui/PaymentFormActivity;->getTotalPriceString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v40

    .line 1638
    .local v40, "totalPrice":Ljava/lang/String;
    const/4 v11, 0x0

    .restart local v11    # "a":I
    :goto_32
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_63

    .line 1639
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    .line 1641
    .local v32, "price":Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;
    new-instance v33, Lorg/telegram/ui/Cells/TextPriceCell;

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextPriceCell;-><init>(Landroid/content/Context;)V

    .line 1642
    .local v33, "priceCell":Lorg/telegram/ui/Cells/TextPriceCell;
    const-string/jumbo v4, "windowBackgroundWhite"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextPriceCell;->setBackgroundColor(I)V

    .line 1643
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->label:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    move-object/from16 v0, v32

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->amount:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatCurrencyString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5, v6}, Lorg/telegram/ui/Cells/TextPriceCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1644
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1638
    add-int/lit8 v11, v11, 0x1

    goto :goto_32

    .line 1647
    .end local v32    # "price":Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;
    .end local v33    # "priceCell":Lorg/telegram/ui/Cells/TextPriceCell;
    :cond_63
    new-instance v33, Lorg/telegram/ui/Cells/TextPriceCell;

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextPriceCell;-><init>(Landroid/content/Context;)V

    .line 1648
    .restart local v33    # "priceCell":Lorg/telegram/ui/Cells/TextPriceCell;
    const-string/jumbo v4, "windowBackgroundWhite"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextPriceCell;->setBackgroundColor(I)V

    .line 1649
    const-string/jumbo v4, "PaymentTransactionTotal"

    const v5, 0x7f070562

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v4, v1, v5}, Lorg/telegram/ui/Cells/TextPriceCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1650
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1652
    new-instance v22, Landroid/view/View;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1653
    .restart local v22    # "divider":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1654
    const-string/jumbo v4, "divider"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1655
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/16 v8, 0x53

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1657
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v5, 0x0

    new-instance v6, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    .line 1658
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1659
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    const-string/jumbo v6, "PaymentCheckoutMethod"

    const v7, 0x7f070540

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1660
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1661
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_64

    .line 1662
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$23;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/PaymentFormActivity$23;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1680
    :cond_64
    const/16 v35, 0x0

    .line 1681
    .local v35, "providerUser":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v11, 0x0

    :goto_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_66

    .line 1682
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lorg/telegram/tgnet/TLRPC$User;

    .line 1683
    .local v41, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v41

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->provider_id:I

    if-ne v4, v5, :cond_65

    .line 1684
    move-object/from16 v35, v41

    .line 1681
    :cond_65
    add-int/lit8 v11, v11, 0x1

    goto :goto_33

    .line 1688
    .end local v41    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_66
    if-eqz v35, :cond_6e

    .line 1689
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v5, 0x1

    new-instance v6, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    .line 1690
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1691
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    move-object/from16 v0, v35

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, v35

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .local v34, "providerName":Ljava/lang/String;
    const-string/jumbo v5, "PaymentCheckoutProvider"

    const v6, 0x7f070544

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v4, v0, v5, v6}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1692
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1697
    :goto_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    if-eqz v4, :cond_6b

    .line 1698
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    if-eqz v4, :cond_67

    .line 1699
    const-string/jumbo v4, "%s %s, %s, %s, %s, %s"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line1:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->street_line2:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->city:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->state:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->country_iso2:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x5

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->shipping_address:Lorg/telegram/tgnet/TLRPC$TL_postAddress;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_postAddress;->post_code:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1700
    .local v12, "address":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v5, 0x2

    new-instance v6, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    .line 1701
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const-string/jumbo v5, "windowBackgroundWhite"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setBackgroundColor(I)V

    .line 1702
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const-string/jumbo v5, "PaymentShippingAddress"

    const v6, 0x7f07054e

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v12, v5, v6}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1703
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1706
    .end local v12    # "address":Ljava/lang/String;
    :cond_67
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_68

    .line 1707
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v5, 0x3

    new-instance v6, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    .line 1708
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const-string/jumbo v5, "windowBackgroundWhite"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setBackgroundColor(I)V

    .line 1709
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->name:Ljava/lang/String;

    const-string/jumbo v6, "PaymentCheckoutName"

    const v7, 0x7f070541

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1710
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1713
    :cond_68
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    if-eqz v4, :cond_69

    .line 1714
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v5, 0x4

    new-instance v6, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    .line 1715
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const-string/jumbo v5, "windowBackgroundWhite"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setBackgroundColor(I)V

    .line 1716
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->phone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "PaymentCheckoutPhoneNumber"

    const v7, 0x7f070543

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1717
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1720
    :cond_69
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    if-eqz v4, :cond_6a

    .line 1721
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v5, 0x5

    new-instance v6, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    .line 1722
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const-string/jumbo v5, "windowBackgroundWhite"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setBackgroundColor(I)V

    .line 1723
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->validateRequest:Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->email:Ljava/lang/String;

    const-string/jumbo v6, "PaymentCheckoutEmail"

    const v7, 0x7f07053f

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1724
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1727
    :cond_6a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    if-eqz v4, :cond_6b

    .line 1728
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v5, 0x6

    new-instance v6, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    .line 1729
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    const-string/jumbo v5, "windowBackgroundWhite"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setBackgroundColor(I)V

    .line 1730
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->title:Ljava/lang/String;

    const-string/jumbo v6, "PaymentCheckoutShippingMethod"

    const v7, 0x7f070545

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1731
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1735
    :cond_6b
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_6d

    .line 1736
    new-instance v4, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Landroid/widget/FrameLayout;

    .line 1737
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v5, 0x1

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1738
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v5, -0x1

    const/16 v6, 0x30

    const/16 v7, 0x50

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1739
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Landroid/widget/FrameLayout;

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$24;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v40

    invoke-direct {v5, v0, v1, v2}, Lorg/telegram/ui/PaymentFormActivity$24;-><init>(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1765
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    .line 1766
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "windowBackgroundWhiteBlueText6"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1767
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "PaymentCheckoutPay"

    const v6, 0x7f070542

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v40, v7, v8

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1768
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const/4 v5, 0x1

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1769
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1770
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1771
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    const/4 v6, -0x1

    const/high16 v7, -0x40800000    # -1.0f

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1773
    new-instance v4, Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v5}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    .line 1774
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 1775
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v6, -0x1

    const/high16 v7, -0x40800000    # -1.0f

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1777
    new-instance v37, Landroid/view/View;

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1778
    .local v37, "shadow":Landroid/view/View;
    const v4, 0x7f0200b8

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1779
    const/4 v4, -0x1

    const/high16 v5, 0x40400000    # 3.0f

    const/16 v6, 0x53

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x42400000    # 48.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1781
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setEnabled(Z)V

    .line 1782
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1784
    new-instance v4, Lorg/telegram/ui/PaymentFormActivity$25;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/PaymentFormActivity$25;-><init>(Lorg/telegram/ui/PaymentFormActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    .line 1791
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1792
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1793
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1795
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_6c

    .line 1796
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 1797
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v17

    .line 1798
    .restart local v17    # "cookieManager":Landroid/webkit/CookieManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 1801
    .end local v17    # "cookieManager":Landroid/webkit/CookieManager;
    :cond_6c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    new-instance v5, Lorg/telegram/ui/PaymentFormActivity$26;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/PaymentFormActivity$26;-><init>(Lorg/telegram/ui/PaymentFormActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1841
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1842
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1845
    .end local v37    # "shadow":Landroid/view/View;
    :cond_6d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v5, 0x1

    new-instance v6, Lorg/telegram/ui/Cells/ShadowSectionCell;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    .line 1846
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const v5, 0x7f0200ad

    const-string/jumbo v6, "windowBackgroundGrayShadow"

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/ShadowSectionCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1847
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_17

    .line 1694
    .end local v34    # "providerName":Ljava/lang/String;
    :cond_6e
    const-string/jumbo v34, ""

    .restart local v34    # "providerName":Ljava/lang/String;
    goto/16 :goto_34

    .line 612
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1132
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_d
        :pswitch_c
    .end packed-switch

    .line 1575
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1944
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didSetTwoStepPassword:I

    if-ne p1, v0, :cond_1

    .line 1945
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->password_missing:Z

    .line 1946
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->can_save_credentials:Z

    .line 1947
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    .line 1955
    :cond_0
    :goto_0
    return-void

    .line 1948
    :cond_1
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didRemovedTwoStepPassword:I

    if-ne p1, v0, :cond_2

    .line 1949
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->password_missing:Z

    .line 1950
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->can_save_credentials:Z

    .line 1951
    invoke-direct {p0}, Lorg/telegram/ui/PaymentFormActivity;->updateSavePaymentField()V

    goto :goto_0

    .line 1952
    :cond_2
    sget v0, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    if-ne p1, v0, :cond_0

    .line 1953
    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->removeSelfFromStack()V

    goto :goto_0
.end method

.method public fillNumber(Ljava/lang/String;)V
    .locals 13
    .param p1, "number"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2171
    :try_start_0
    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v12, "phone"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 2172
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x1

    .line 2173
    .local v1, "allowCall":Z
    const/4 v2, 0x1

    .line 2174
    .local v2, "allowSms":Z
    if-nez p1, :cond_0

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v11

    if-eq v11, v9, :cond_6

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v11

    if-eqz v11, :cond_6

    .line 2175
    :cond_0
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x17

    if-lt v11, v12, :cond_1

    .line 2176
    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    const-string/jumbo v12, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_7

    move v1, v9

    .line 2177
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    const-string/jumbo v12, "android.permission.RECEIVE_SMS"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_8

    move v2, v9

    .line 2179
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    if-nez v1, :cond_2

    if-eqz v2, :cond_6

    .line 2180
    :cond_2
    if-nez p1, :cond_3

    .line 2181
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2183
    :cond_3
    const/4 v7, 0x0

    .line 2184
    .local v7, "textToSet":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2185
    .local v5, "ok":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 2186
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    if-le v10, v11, :cond_5

    .line 2187
    const/4 v0, 0x4

    .local v0, "a":I
    :goto_2
    if-lt v0, v9, :cond_4

    .line 2188
    const/4 v10, 0x0

    invoke-virtual {p1, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2189
    .local v6, "sub":Ljava/lang/String;
    iget-object v10, p0, Lorg/telegram/ui/PaymentFormActivity;->codesMap:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2190
    .local v3, "country":Ljava/lang/String;
    if-eqz v3, :cond_9

    .line 2191
    const/4 v5, 0x1

    .line 2192
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2193
    iget-object v9, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v10, 0x8

    aget-object v9, v9, v10

    invoke-virtual {v9, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2197
    .end local v3    # "country":Ljava/lang/String;
    .end local v6    # "sub":Ljava/lang/String;
    :cond_4
    if-nez v5, :cond_5

    .line 2198
    const/4 v9, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2199
    iget-object v9, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v10, 0x8

    aget-object v9, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2202
    .end local v0    # "a":I
    :cond_5
    if-eqz v7, :cond_6

    .line 2203
    iget-object v9, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v10, 0x9

    aget-object v9, v9, v10

    invoke-virtual {v9, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2204
    iget-object v9, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v10, 0x9

    aget-object v9, v9, v10

    iget-object v10, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    const/16 v11, 0x9

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2212
    .end local v1    # "allowCall":Z
    .end local v2    # "allowSms":Z
    .end local v5    # "ok":Z
    .end local v7    # "textToSet":Ljava/lang/String;
    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    :cond_6
    :goto_3
    return-void

    .restart local v1    # "allowCall":Z
    .restart local v2    # "allowSms":Z
    .restart local v8    # "tm":Landroid/telephony/TelephonyManager;
    :cond_7
    move v1, v10

    .line 2176
    goto/16 :goto_0

    :cond_8
    move v2, v10

    .line 2177
    goto :goto_1

    .line 2187
    .restart local v0    # "a":I
    .restart local v3    # "country":Ljava/lang/String;
    .restart local v5    # "ok":Z
    .restart local v6    # "sub":Ljava/lang/String;
    .restart local v7    # "textToSet":Ljava/lang/String;
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 2209
    .end local v0    # "a":I
    .end local v1    # "allowCall":Z
    .end local v2    # "allowSms":Z
    .end local v3    # "country":Ljava/lang/String;
    .end local v5    # "ok":Z
    .end local v6    # "sub":Ljava/lang/String;
    .end local v7    # "textToSet":Ljava/lang/String;
    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v4

    .line 2210
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 11

    .prologue
    .line 2724
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2725
    .local v10, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/ActionBar/ThemeDescription;>;"
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2726
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2727
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->scrollView:Landroid/widget/ScrollView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2728
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2729
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2730
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2731
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSearch"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2732
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSearchPlaceholder"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2733
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2734
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "contextProgressInner2"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2735
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "contextProgressOuter2"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2736
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "contextProgressInner2"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2737
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->progressViewButton:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "contextProgressOuter2"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2739
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2740
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    array-length v0, v0

    if-ge v9, v0, :cond_1

    .line 2741
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2742
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2743
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteHintText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2740
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2746
    .end local v9    # "a":I
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2747
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteHintText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2749
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    if-eqz v0, :cond_2

    .line 2750
    const/4 v9, 0x0

    .restart local v9    # "a":I
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    array-length v0, v0

    if-ge v9, v0, :cond_3

    .line 2751
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2752
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2753
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v1, v1, v9

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2754
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "radioButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "radioBackground"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2755
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->radioCells:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "radioButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "radioBackgroundChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2750
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 2758
    .end local v9    # "a":I
    :cond_2
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2759
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "radioButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "radioBackground"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2760
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "radioButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "radioBackgroundChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2762
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "a":I
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    array-length v0, v0

    if-ge v9, v0, :cond_4

    .line 2763
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2764
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->headerCell:[Lorg/telegram/ui/Cells/HeaderCell;

    aget-object v1, v1, v9

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlueHeader"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2762
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2766
    :cond_4
    const/4 v9, 0x0

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    array-length v0, v0

    if-ge v9, v0, :cond_5

    .line 2767
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2766
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 2769
    :cond_5
    const/4 v9, 0x0

    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    array-length v0, v0

    if-ge v9, v0, :cond_6

    .line 2770
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2771
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v9

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText4"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2772
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomCell:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteLinkText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2769
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2774
    :cond_6
    const/4 v9, 0x0

    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_7

    .line 2775
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2774
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 2778
    :cond_7
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->textView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2780
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2781
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchThumb"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2782
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchTrack"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2783
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchThumbChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2784
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchTrackChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2785
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2786
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2788
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell1:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2789
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell1:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2790
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->settingsCell1:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2792
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->payTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteBlueText6"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2794
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextPriceCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2795
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextPriceCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2796
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextPriceCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2797
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextPriceCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2798
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->linearLayout2:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextPriceCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2800
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2801
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2803
    const/4 v9, 0x1

    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    array-length v0, v0

    if-ge v9, v0, :cond_8

    .line 2804
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2805
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v9

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2806
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->detailSettingsCell:[Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aget-object v1, v1, v9

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2803
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 2809
    :cond_8
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2810
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/PaymentInfoCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "nameTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2811
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/PaymentInfoCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "detailTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2812
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentInfoCell:Lorg/telegram/ui/Cells/PaymentInfoCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/PaymentInfoCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "detailExTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2814
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2815
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->bottomLayout:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2817
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    return-object v0
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 23
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 2013
    const/16 v18, 0x3e8

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 2014
    const/16 v18, -0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 2015
    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 2016
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    .line 2018
    const-string/jumbo v18, "com.google.android.gms.wallet.EXTRA_MASKED_WALLET"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/wallet/MaskedWallet;

    .line 2020
    .local v14, "maskedWallet":Lcom/google/android/gms/wallet/MaskedWallet;
    invoke-static {}, Lcom/google/android/gms/wallet/Cart;->newBuilder()Lcom/google/android/gms/wallet/Cart$Builder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 2021
    invoke-virtual/range {v18 .. v19}, Lcom/google/android/gms/wallet/Cart$Builder;->setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/wallet/Cart$Builder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity;->totalPriceDecimal:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 2022
    invoke-virtual/range {v18 .. v19}, Lcom/google/android/gms/wallet/Cart$Builder;->setTotalPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/Cart$Builder;

    move-result-object v10

    .line 2024
    .local v10, "cardBuilder":Lcom/google/android/gms/wallet/Cart$Builder;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2025
    .local v8, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->prices:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2026
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 2027
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity;->shippingOption:Lorg/telegram/tgnet/TLRPC$TL_shippingOption;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_shippingOption;->prices:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2029
    :cond_0
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_1

    .line 2030
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;

    .line 2031
    .local v15, "price":Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v18

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->amount:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move-object/from16 v3, v19

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatCurrencyDecimalString(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 2032
    .local v7, "amount":Ljava/lang/String;
    invoke-static {}, Lcom/google/android/gms/wallet/LineItem;->newBuilder()Lcom/google/android/gms/wallet/LineItem$Builder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_invoice;->currency:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 2033
    invoke-virtual/range {v18 .. v19}, Lcom/google/android/gms/wallet/LineItem$Builder;->setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;

    move-result-object v18

    const-string/jumbo v19, "1"

    .line 2034
    invoke-virtual/range {v18 .. v19}, Lcom/google/android/gms/wallet/LineItem$Builder;->setQuantity(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;

    move-result-object v18

    iget-object v0, v15, Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;->label:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 2035
    invoke-virtual/range {v18 .. v19}, Lcom/google/android/gms/wallet/LineItem$Builder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;

    move-result-object v18

    .line 2036
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/google/android/gms/wallet/LineItem$Builder;->setTotalPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;

    move-result-object v18

    .line 2037
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/google/android/gms/wallet/LineItem$Builder;->setUnitPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/wallet/LineItem$Builder;->build()Lcom/google/android/gms/wallet/LineItem;

    move-result-object v18

    .line 2032
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/google/android/gms/wallet/Cart$Builder;->addLineItem(Lcom/google/android/gms/wallet/LineItem;)Lcom/google/android/gms/wallet/Cart$Builder;

    .line 2029
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2039
    .end local v7    # "amount":Ljava/lang/String;
    .end local v15    # "price":Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;
    :cond_1
    invoke-static {}, Lcom/google/android/gms/wallet/FullWalletRequest;->newBuilder()Lcom/google/android/gms/wallet/FullWalletRequest$Builder;

    move-result-object v18

    .line 2040
    invoke-virtual {v10}, Lcom/google/android/gms/wallet/Cart$Builder;->build()Lcom/google/android/gms/wallet/Cart;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;->setCart(Lcom/google/android/gms/wallet/Cart;)Lcom/google/android/gms/wallet/FullWalletRequest$Builder;

    move-result-object v18

    .line 2041
    invoke-virtual {v14}, Lcom/google/android/gms/wallet/MaskedWallet;->getGoogleTransactionId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;->setGoogleTransactionId(Ljava/lang/String;)Lcom/google/android/gms/wallet/FullWalletRequest$Builder;

    move-result-object v18

    .line 2042
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/wallet/FullWalletRequest$Builder;->build()Lcom/google/android/gms/wallet/FullWalletRequest;

    move-result-object v12

    .line 2043
    .local v12, "fullWalletRequest":Lcom/google/android/gms/wallet/FullWalletRequest;
    sget-object v18, Lcom/google/android/gms/wallet/Wallet;->Payments:Lcom/google/android/gms/wallet/Payments;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object/from16 v19, v0

    const/16 v20, 0x3e9

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v12, v2}, Lcom/google/android/gms/wallet/Payments;->loadFullWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/FullWalletRequest;I)V

    .line 2070
    .end local v6    # "a":I
    .end local v8    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_labeledPrice;>;"
    .end local v10    # "cardBuilder":Lcom/google/android/gms/wallet/Cart$Builder;
    .end local v12    # "fullWalletRequest":Lcom/google/android/gms/wallet/FullWalletRequest;
    .end local v14    # "maskedWallet":Lcom/google/android/gms/wallet/MaskedWallet;
    :cond_2
    :goto_1
    return-void

    .line 2045
    :cond_3
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 2046
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    goto :goto_1

    .line 2048
    :cond_4
    const/16 v18, 0x3e9

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 2049
    const/16 v18, -0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 2050
    const-string/jumbo v18, "com.google.android.gms.wallet.EXTRA_FULL_WALLET"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/wallet/FullWallet;

    .line 2051
    .local v11, "fullWallet":Lcom/google/android/gms/wallet/FullWallet;
    invoke-virtual {v11}, Lcom/google/android/gms/wallet/FullWallet;->getPaymentMethodToken()Lcom/google/android/gms/wallet/PaymentMethodToken;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/wallet/PaymentMethodToken;->getToken()Ljava/lang/String;

    move-result-object v17

    .line 2054
    .local v17, "tokenJSON":Ljava/lang/String;
    :try_start_0
    invoke-static/range {v17 .. v17}, Lcom/stripe/android/net/TokenParser;->parseToken(Ljava/lang/String;)Lcom/stripe/android/model/Token;

    move-result-object v16

    .line 2055
    .local v16, "token":Lcom/stripe/android/model/Token;
    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v19, "{\"type\":\"%1$s\", \"id\":\"%2$s\"}"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/stripe/android/model/Token;->getType()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/stripe/android/model/Token;->getId()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v18 .. v20}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->paymentJson:Ljava/lang/String;

    .line 2056
    invoke-virtual/range {v16 .. v16}, Lcom/stripe/android/model/Token;->getCard()Lcom/stripe/android/model/Card;

    move-result-object v9

    .line 2057
    .local v9, "card":Lcom/stripe/android/model/Card;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/stripe/android/model/Card;->getType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " *"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Lcom/stripe/android/model/Card;->getLast4()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PaymentFormActivity;->cardName:Ljava/lang/String;

    .line 2058
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V

    .line 2059
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 2060
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 2061
    .end local v9    # "card":Lcom/stripe/android/model/Card;
    .end local v16    # "token":Lcom/stripe/android/model/Token;
    :catch_0
    move-exception v13

    .line 2062
    .local v13, "ignore":Lorg/json/JSONException;
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 2063
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    goto/16 :goto_1

    .line 2066
    .end local v11    # "fullWallet":Lcom/google/android/gms/wallet/FullWallet;
    .end local v13    # "ignore":Lorg/json/JSONException;
    .end local v17    # "tokenJSON":Ljava/lang/String;
    :cond_5
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V

    .line 2067
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V

    goto/16 :goto_1
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 2719
    iget-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity;->donePressed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 1885
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetTwoStepPassword:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1886
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didRemovedTwoStepPassword:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1887
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1888
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1890
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 4

    .prologue
    .line 1895
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didSetTwoStepPassword:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1896
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didRemovedTwoStepPassword:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1897
    iget v2, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 1898
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->paymentFinished:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1900
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    if-eqz v2, :cond_2

    .line 1902
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1903
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_1

    .line 1904
    check-cast v1, Landroid/widget/FrameLayout;

    .end local v1    # "parent":Landroid/view/ViewParent;
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1906
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->stopLoading()V

    .line 1907
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    const-string/jumbo v3, "about:blank"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1908
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V

    .line 1909
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1915
    :cond_2
    :goto_0
    :try_start_1
    iget v2, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_4

    sget-object v2, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    if-eqz v2, :cond_4

    .line 1916
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1921
    :cond_4
    :goto_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 1922
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/PaymentFormActivity;->canceled:Z

    .line 1923
    return-void

    .line 1910
    :catch_0
    move-exception v0

    .line 1911
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1918
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1919
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 409
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 386
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 387
    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/PaymentFormActivity;->classGuid:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 388
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 390
    :try_start_0
    iget v1, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_invoice;->test:Z

    if-nez v1, :cond_2

    .line 391
    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x2000

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 402
    :cond_1
    return-void

    .line 392
    :cond_2
    :try_start_1
    sget-object v1, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    if-eqz v1, :cond_0

    .line 393
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/PaymentFormActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onTransitionAnimationEnd(ZZ)V
    .locals 4
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1927
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 1928
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 1929
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1930
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity;->paymentForm:Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1940
    :cond_0
    :goto_0
    return-void

    .line 1932
    :cond_1
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1933
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1934
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    goto :goto_0

    .line 1935
    :cond_2
    iget v0, p0, Lorg/telegram/ui/PaymentFormActivity;->currentStep:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1936
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1937
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    goto :goto_0
.end method
