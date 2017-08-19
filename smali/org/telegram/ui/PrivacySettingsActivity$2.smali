.class Lorg/telegram/ui/PrivacySettingsActivity$2;
.super Ljava/lang/Object;
.source "PrivacySettingsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacySettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PrivacySettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacySettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PrivacySettingsActivity;

    .prologue
    .line 171
    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 329
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 177
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->blockedRow:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_2

    .line 178
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    new-instance v9, Lorg/telegram/ui/BlockedUsersActivity;

    invoke-direct {v9}, Lorg/telegram/ui/BlockedUsersActivity;-><init>()V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/PrivacySettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 179
    :cond_2
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->sessionsRow:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_3

    .line 180
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    new-instance v9, Lorg/telegram/ui/SessionsActivity;

    invoke-direct {v9}, Lorg/telegram/ui/SessionsActivity;-><init>()V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/PrivacySettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 181
    :cond_3
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountRow:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_4

    .line 182
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 185
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 186
    .local v1, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v8, "DeleteAccountTitle"

    const v9, 0x7f070203

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 187
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const-string/jumbo v10, "Months"

    const/4 v11, 0x1

    .line 188
    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "Months"

    const/4 v11, 0x3

    .line 189
    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "Months"

    const/4 v11, 0x6

    .line 190
    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string/jumbo v10, "Years"

    const/4 v11, 0x1

    .line 191
    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    new-instance v9, Lorg/telegram/ui/PrivacySettingsActivity$2$1;

    invoke-direct {v9, p0}, Lorg/telegram/ui/PrivacySettingsActivity$2$1;-><init>(Lorg/telegram/ui/PrivacySettingsActivity$2;)V

    .line 187
    invoke-virtual {v1, v8, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 235
    const-string/jumbo v8, "Cancel"

    const v9, 0x7f070105

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 236
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/PrivacySettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 237
    .end local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_4
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->lastSeenRow:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_5

    .line 238
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    new-instance v9, Lorg/telegram/ui/PrivacyControlActivity;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/PrivacySettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 239
    :cond_5
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->callsRow:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_6

    .line 240
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    new-instance v9, Lorg/telegram/ui/PrivacyControlActivity;

    const/4 v10, 0x2

    invoke-direct {v9, v10}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/PrivacySettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 241
    :cond_6
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->groupsRow:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_7

    .line 242
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    new-instance v9, Lorg/telegram/ui/PrivacyControlActivity;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/PrivacySettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 243
    :cond_7
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_8

    .line 244
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    new-instance v9, Lorg/telegram/ui/TwoStepVerificationActivity;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>(I)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/PrivacySettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 245
    :cond_8
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->passcodeRow:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_a

    .line 246
    sget-object v8, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_9

    .line 247
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    new-instance v9, Lorg/telegram/ui/PasscodeActivity;

    const/4 v10, 0x2

    invoke-direct {v9, v10}, Lorg/telegram/ui/PasscodeActivity;-><init>(I)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/PrivacySettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 249
    :cond_9
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    new-instance v9, Lorg/telegram/ui/PasscodeActivity;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lorg/telegram/ui/PasscodeActivity;-><init>(I)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/PrivacySettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 251
    :cond_a
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->secretWebpageRow:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_d

    .line 252
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget v8, v8, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    .line 253
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    const/4 v9, 0x0

    iput v9, v8, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    .line 257
    :goto_1
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->mainconfig:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string/jumbo v9, "secretWebpage2"

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget v10, v10, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 258
    instance-of v8, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v8, :cond_0

    .line 259
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget v8, v8, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {p1, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 255
    .restart local p1    # "view":Landroid/view/View;
    :cond_b
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    const/4 v9, 0x1

    iput v9, v8, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    goto :goto_1

    .line 259
    .end local p1    # "view":Landroid/view/View;
    :cond_c
    const/4 v8, 0x0

    goto :goto_2

    .line 261
    .restart local p1    # "view":Landroid/view/View;
    :cond_d
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->callsP2PRow:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_f

    .line 262
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->mainconfig:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 263
    .local v7, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v8, "calls_p2p"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_e

    const/4 v4, 0x1

    .line 264
    .local v4, "enableP2p":Z
    :goto_3
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string/jumbo v9, "calls_p2p"

    invoke-interface {v8, v9, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 265
    instance-of v8, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v8, :cond_0

    .line 266
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_0

    .line 263
    .end local v4    # "enableP2p":Z
    .restart local p1    # "view":Landroid/view/View;
    :cond_e
    const/4 v4, 0x0

    goto :goto_3

    .line 268
    .end local v7    # "prefs":Landroid/content/SharedPreferences;
    :cond_f
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->paymentsClearRow:I
    invoke-static {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_0

    .line 269
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 270
    .local v1, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 271
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyBottomPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 272
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 273
    .local v5, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 274
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4
    const/4 v8, 0x2

    if-ge v0, v8, :cond_12

    .line 275
    const/4 v6, 0x0

    .line 276
    .local v6, "name":Ljava/lang/String;
    if-nez v0, :cond_11

    .line 277
    const-string/jumbo v8, "PrivacyClearShipping"

    const v9, 0x7f0705a0

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 281
    :cond_10
    :goto_5
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    # getter for: Lorg/telegram/ui/PrivacySettingsActivity;->clear:[Z
    invoke-static {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1200(Lorg/telegram/ui/PrivacySettingsActivity;)[Z

    move-result-object v8

    const/4 v9, 0x1

    aput-boolean v9, v8, v0

    .line 282
    new-instance v3, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v3, v8, v9}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;Z)V

    .line 283
    .local v3, "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTag(Ljava/lang/Object;)V

    .line 284
    const/4 v8, 0x0

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/CheckBoxCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    const/4 v8, -0x1

    const/16 v9, 0x30

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v3, v6, v8, v9, v10}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 287
    const-string/jumbo v8, "dialogTextBlack"

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTextColor(I)V

    .line 288
    new-instance v8, Lorg/telegram/ui/PrivacySettingsActivity$2$2;

    invoke-direct {v8, p0}, Lorg/telegram/ui/PrivacySettingsActivity$2$2;-><init>(Lorg/telegram/ui/PrivacySettingsActivity$2;)V

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/CheckBoxCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 278
    .end local v3    # "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    :cond_11
    const/4 v8, 0x1

    if-ne v0, v8, :cond_10

    .line 279
    const-string/jumbo v8, "PrivacyClearPayment"

    const v9, 0x7f07059f

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 298
    .end local v6    # "name":Ljava/lang/String;
    :cond_12
    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v2, v8, v9}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;I)V

    .line 299
    .local v2, "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    const/4 v8, 0x0

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    const-string/jumbo v8, "ClearButton"

    const v9, 0x7f070192

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 301
    const-string/jumbo v8, "windowBackgroundWhiteRedText"

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextColor(I)V

    .line 302
    new-instance v8, Lorg/telegram/ui/PrivacySettingsActivity$2$3;

    invoke-direct {v8, p0}, Lorg/telegram/ui/PrivacySettingsActivity$2$3;-><init>(Lorg/telegram/ui/PrivacySettingsActivity$2;)V

    invoke-virtual {v2, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    const/4 v8, -0x1

    const/16 v9, 0x30

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 327
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$2;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/PrivacySettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0
.end method
