.class Lorg/telegram/ui/ThemingActivity$3;
.super Ljava/lang/Object;
.source "ThemingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemingActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ThemingActivity;

    .prologue
    .line 194
    iput-object p1, p0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 27
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "theme"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 199
    .local v21, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "themeColor"

    const v4, -0xab8a62

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 201
    .local v5, "defColor":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingActivity;->access$200(Lorg/telegram/ui/ThemingActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_2

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 470
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 205
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/LayoutInflater;

    .line 206
    .local v20, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 207
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingActivity$3$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingActivity$3$1;-><init>(Lorg/telegram/ui/ThemingActivity$3;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 216
    .local v2, "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto :goto_0

    .line 217
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v20    # "li":Landroid/view/LayoutInflater;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingActivity;->access$400(Lorg/telegram/ui/ThemingActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_3

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 222
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/LayoutInflater;

    .line 223
    .restart local v20    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 224
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/ThemingActivity$3$2;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lorg/telegram/ui/ThemingActivity$3$2;-><init>(Lorg/telegram/ui/ThemingActivity$3;)V

    const-string/jumbo v3, "dialogColor"

    .line 230
    move-object/from16 v0, v21

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 231
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_0

    .line 232
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v20    # "li":Landroid/view/LayoutInflater;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingActivity;->access$600(Lorg/telegram/ui/ThemingActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_6

    .line 233
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->findPrefFolder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "theme.xml"

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .local v18, "file":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x64

    cmp-long v3, v6, v8

    if-gez v3, :cond_5

    .line 235
    :cond_4
    new-instance v3, Lorg/telegram/ui/ThemingActivity$3$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemingActivity$3$3;-><init>(Lorg/telegram/ui/ThemingActivity$3;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 242
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v20

    .line 243
    .restart local v20    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030007

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    .line 244
    .local v23, "promptsView":Landroid/view/View;
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v14, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 245
    .local v14, "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 246
    const v3, 0x7f0c004a

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/EditText;

    .line 247
    .local v26, "userInput":Landroid/widget/EditText;
    const-string/jumbo v3, "EnterName"

    const v4, 0x7f07027a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 248
    const v3, -0x686869

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 249
    invoke-virtual/range {v26 .. v26}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string/jumbo v4, "dialogColor"

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 250
    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 252
    const-string/jumbo v3, "SaveTheme"

    const v4, 0x7f07060d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 253
    const-string/jumbo v3, "OK"

    const v4, 0x7f0704f5

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingActivity$3$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/ThemingActivity$3$4;-><init>(Lorg/telegram/ui/ThemingActivity$3;Landroid/widget/EditText;)V

    invoke-virtual {v14, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 288
    const-string/jumbo v3, "Cancel"

    const v4, 0x7f070105

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 289
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 291
    .end local v14    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v18    # "file":Ljava/io/File;
    .end local v20    # "li":Landroid/view/LayoutInflater;
    .end local v23    # "promptsView":Landroid/view/View;
    .end local v26    # "userInput":Landroid/widget/EditText;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingActivity;->access$800(Lorg/telegram/ui/ThemingActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_7

    .line 292
    new-instance v19, Lorg/telegram/ui/DocumentSelectActivity;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/ui/DocumentSelectActivity;-><init>()V

    .line 293
    .local v19, "fragment":Lorg/telegram/ui/DocumentSelectActivity;
    const-string/jumbo v3, ".xml"

    move-object/from16 v0, v19

    iput-object v3, v0, Lorg/telegram/ui/DocumentSelectActivity;->fileFilter:Ljava/lang/String;

    .line 294
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v6, ".xml"

    aput-object v6, v3, v4

    move-object/from16 v0, v19

    iput-object v3, v0, Lorg/telegram/ui/DocumentSelectActivity;->arrayFilter:[Ljava/lang/String;

    .line 295
    new-instance v3, Lorg/telegram/ui/ThemingActivity$3$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemingActivity$3$5;-><init>(Lorg/telegram/ui/ThemingActivity$3;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/telegram/ui/DocumentSelectActivity;->setDelegate(Lorg/telegram/ui/DocumentSelectActivity$DocumentSelectActivityDelegate;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ThemingActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 343
    .end local v19    # "fragment":Lorg/telegram/ui/DocumentSelectActivity;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingActivity;->access$900(Lorg/telegram/ui/ThemingActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_8

    .line 344
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v14, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 345
    .restart local v14    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "AreYouSure"

    const v4, 0x7f07008e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 346
    const-string/jumbo v3, "ResetThemeSettings"

    const v4, 0x7f0705e5

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 347
    const-string/jumbo v3, "OK"

    const v4, 0x7f0704f5

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingActivity$3$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingActivity$3$6;-><init>(Lorg/telegram/ui/ThemingActivity$3;)V

    invoke-virtual {v14, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 396
    const-string/jumbo v3, "Cancel"

    const v4, 0x7f070105

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 397
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 398
    .end local v14    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingActivity;->access$1300(Lorg/telegram/ui/ThemingActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_9

    .line 399
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity;

    invoke-direct {v4}, Lorg/telegram/ui/ThemingChatsActivity;-><init>()V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 400
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingActivity;->access$1400(Lorg/telegram/ui/ThemingActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_a

    .line 401
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity;

    invoke-direct {v4}, Lorg/telegram/ui/ThemingChatActivity;-><init>()V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 402
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingActivity;->access$1500(Lorg/telegram/ui/ThemingActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_b

    .line 403
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    new-instance v4, Lorg/telegram/ui/ThemingContactsActivity;

    invoke-direct {v4}, Lorg/telegram/ui/ThemingContactsActivity;-><init>()V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 404
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingActivity;->access$1600(Lorg/telegram/ui/ThemingActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_c

    .line 405
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    new-instance v4, Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-direct {v4}, Lorg/telegram/ui/ThemingDrawerActivity;-><init>()V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 406
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingActivity;->access$1700(Lorg/telegram/ui/ThemingActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_d

    .line 407
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    new-instance v4, Lorg/telegram/ui/ThemingProfileActivity;

    invoke-direct {v4}, Lorg/telegram/ui/ThemingProfileActivity;-><init>()V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 408
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingActivity;->access$1800(Lorg/telegram/ui/ThemingActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_e

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    new-instance v4, Lorg/telegram/ui/ThemingSettingsActivity;

    invoke-direct {v4}, Lorg/telegram/ui/ThemingSettingsActivity;-><init>()V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 410
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingActivity;->access$1900(Lorg/telegram/ui/ThemingActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_0

    .line 411
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-nez v3, :cond_12

    const/4 v3, 0x1

    :goto_1
    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    .line 412
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "theme"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 413
    .local v25, "themePrefs":Landroid/content/SharedPreferences;
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 414
    .local v17, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "usePlusTheme"

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 415
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 416
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_f

    .line 417
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 419
    :cond_f
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_13

    .line 421
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v3

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v4

    if-eq v3, v4, :cond_10

    .line 422
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->mainconfig:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 423
    .local v22, "prefs":Landroid/content/SharedPreferences;
    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 424
    .local v16, "edit":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "prevTheme"

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 425
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 427
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->applyTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    .line 462
    .end local v16    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v22    # "prefs":Landroid/content/SharedPreferences;
    :cond_10
    :goto_2
    const/4 v3, 0x1

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->applyPlusTheme(Z)V

    .line 463
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingActivity;->access$2000(Lorg/telegram/ui/ThemingActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 464
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingActivity;->access$2100(Lorg/telegram/ui/ThemingActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(ZZ)V

    .line 466
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingActivity;->access$2200(Lorg/telegram/ui/ThemingActivity;)Landroid/widget/ListView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 467
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingActivity;->access$2200(Lorg/telegram/ui/ThemingActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0

    .line 411
    .end local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v25    # "themePrefs":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 432
    .end local p2    # "view":Landroid/view/View;
    .restart local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v25    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_13
    const/4 v13, 0x0

    .line 434
    .local v13, "applyingTheme":Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    :try_start_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->mainconfig:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 435
    .restart local v22    # "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "prevTheme"

    const-string/jumbo v4, "theme"

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 436
    .local v24, "theme":Ljava/lang/String;
    if-eqz v24, :cond_14

    .line 437
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getThemeList()Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-object v13, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    .end local v22    # "prefs":Landroid/content/SharedPreferences;
    .end local v24    # "theme":Ljava/lang/String;
    :cond_14
    :goto_3
    if-nez v13, :cond_15

    .line 443
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v13

    .line 457
    :cond_15
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->applyTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    goto :goto_2

    .line 439
    :catch_0
    move-exception v15

    .line 440
    .local v15, "e":Ljava/lang/Exception;
    invoke-static {v15}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method
