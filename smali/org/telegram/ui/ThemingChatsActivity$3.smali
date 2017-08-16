.class Lorg/telegram/ui/ThemingChatsActivity$3;
.super Ljava/lang/Object;
.source "ThemingChatsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingChatsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemingChatsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingChatsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 259
    iput-object p1, p0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 23
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
    .line 263
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "theme"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 266
    .local v19, "themePrefs":Landroid/content/SharedPreferences;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 268
    .local v15, "key":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->headerColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_3

    .line 269
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1129
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 266
    .end local v15    # "key":Ljava/lang/String;
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    const-string/jumbo v15, ""

    goto :goto_0

    .line 272
    .restart local v15    # "key":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 273
    .local v16, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 274
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$1;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 282
    .local v2, "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto :goto_1

    .line 283
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->headerGradientColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$400(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_4

    .line 284
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 287
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 288
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 289
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$2;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderGradientColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 297
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 298
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->headerTitleColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$500(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_5

    .line 299
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 303
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 304
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$3;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    const/4 v5, -0x1

    .line 311
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 312
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 313
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->headerIconsColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$600(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_6

    .line 314
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 317
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 318
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 319
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$4;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderIconsColor:I

    .line 326
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 327
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 328
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->headerTabIconColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$700(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_7

    .line 329
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 333
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 334
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$5;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderTabIconColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 345
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 346
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->headerTabUnselectedIconColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_8

    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 351
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 352
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$6;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderTabUnselectedIconColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 360
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 361
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->headerTabCounterColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_9

    .line 362
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 365
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 366
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 367
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$7;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsTabCounterColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 375
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 376
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->headerTabCounterBGColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$1000(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_a

    .line 377
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 380
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 381
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 382
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$8;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsTabCounterBGColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 390
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 391
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->headerTabCounterSilentBGColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$1100(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_b

    .line 392
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 396
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 397
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$9;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsTabCounterSilentBGColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 405
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 406
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->rowColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$1200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_c

    .line 407
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 410
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 411
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 412
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$10;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsRowColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 421
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 422
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->tabsBGColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$1300(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_d

    .line 423
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 426
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 427
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 428
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$11;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsBGColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 437
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 438
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->favIndicatorColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$1400(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_e

    .line 439
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 443
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 444
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$12;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$12;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsFavIndicatorColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 452
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 453
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->rowGradientColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$1500(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_f

    .line 454
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 457
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 458
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 459
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$13;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$13;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsRowGradientColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 468
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 469
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->rowGradientListCheckRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$1600(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_13

    .line 470
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v15, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 471
    .local v10, "b":Z
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 472
    .local v13, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez v10, :cond_11

    const/4 v3, 0x1

    :goto_2
    invoke-interface {v13, v15, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 473
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 474
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_10

    .line 475
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v10, :cond_12

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 479
    :cond_10
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->updateDialogsTheme:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 472
    .restart local p2    # "view":Landroid/view/View;
    :cond_11
    const/4 v3, 0x0

    goto :goto_2

    .line 475
    .end local p2    # "view":Landroid/view/View;
    :cond_12
    const/4 v3, 0x0

    goto :goto_3

    .line 480
    .end local v10    # "b":Z
    .end local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->pinnedMsgBGColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$1700(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_14

    .line 481
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 484
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 485
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 486
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$14;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$14;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsPinnedMsgBGColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 495
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 496
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->dividerColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$1800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_15

    .line 497
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 500
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 501
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 502
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$15;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$15;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    const v5, -0x232324

    .line 509
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 510
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 519
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->headerTitleRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$1900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_19

    .line 520
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 521
    .local v11, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "HeaderTitle"

    const v4, 0x7f070352

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 522
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v21

    .line 523
    .local v21, "user_id":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v20

    .line 524
    .local v20, "user":Lorg/telegram/tgnet/TLRPC$User;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v9, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const-string/jumbo v3, "AppName"

    const v4, 0x7f07007d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    const-string/jumbo v3, "ShortAppName"

    const v4, 0x7f07081b

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    const-string/jumbo v22, ""

    .line 528
    .local v22, "usr":Ljava/lang/String;
    if-eqz v20, :cond_17

    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-nez v3, :cond_16

    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v3, :cond_17

    .line 529
    :cond_16
    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 530
    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_17
    if-eqz v20, :cond_18

    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v3, :cond_18

    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_18

    .line 533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 534
    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    :cond_18
    const-string/jumbo v3, ""

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 538
    .local v18, "simpleArray":[Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v9, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 539
    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$16;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatsActivity$3$16;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 550
    const-string/jumbo v3, "Cancel"

    const v4, 0x7f070105

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 551
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 552
    .end local v9    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v18    # "simpleArray":[Ljava/lang/String;
    .end local v20    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v21    # "user_id":I
    .end local v22    # "usr":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->headerGradientRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$2100(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_1a

    .line 553
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 554
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "RowGradient"

    const v4, 0x7f0705fd

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 555
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .restart local v9    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const-string/jumbo v3, "RowGradientDisabled"

    const v4, 0x7f070600

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    const-string/jumbo v3, "RowGradientTopBottom"

    const v4, 0x7f070604

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    const-string/jumbo v3, "RowGradientLeftRight"

    const v4, 0x7f070601

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    const-string/jumbo v3, "RowGradientTLBR"

    const v4, 0x7f070603

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    const-string/jumbo v3, "RowGradientBLTR"

    const v4, 0x7f0705fe

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 562
    .restart local v18    # "simpleArray":[Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v9, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 563
    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$17;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatsActivity$3$17;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 576
    const-string/jumbo v3, "Cancel"

    const v4, 0x7f070105

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 577
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 578
    .end local v9    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v18    # "simpleArray":[Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->rowGradientRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$2200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_1b

    .line 579
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 580
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "RowGradient"

    const v4, 0x7f0705fd

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 581
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .restart local v9    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const-string/jumbo v3, "RowGradientDisabled"

    const v4, 0x7f070600

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    const-string/jumbo v3, "RowGradientTopBottom"

    const v4, 0x7f070604

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    const-string/jumbo v3, "RowGradientLeftRight"

    const v4, 0x7f070601

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    const-string/jumbo v3, "RowGradientTLBR"

    const v4, 0x7f070603

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    const-string/jumbo v3, "RowGradientBLTR"

    const v4, 0x7f0705fe

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 588
    .restart local v18    # "simpleArray":[Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v9, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 589
    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$18;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatsActivity$3$18;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 603
    const-string/jumbo v3, "Cancel"

    const v4, 0x7f070105

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 604
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 605
    .end local v9    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v18    # "simpleArray":[Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->nameColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$2300(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_1c

    .line 606
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 609
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 610
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 611
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$19;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$19;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsNameColor:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 618
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 619
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->groupNameColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$2400(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_1d

    .line 620
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 623
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 624
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 625
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$20;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$20;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsNameColor:I

    .line 631
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 633
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 634
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->unknownNameColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$2500(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_1e

    .line 635
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 638
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 639
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 640
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$21;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$21;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsNameColor:I

    .line 646
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 648
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 649
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->groupIconColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$2600(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_1f

    .line 650
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 653
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 654
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 655
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$22;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$22;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    const-string/jumbo v5, "chatsGroupNameColor"

    const/high16 v6, -0x1000000

    .line 661
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 662
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 663
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->muteColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$2700(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_20

    .line 664
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 667
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 668
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 669
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$23;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$23;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    const v5, -0x575758

    .line 675
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 676
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 677
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->checksColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$2800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_21

    .line 678
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 681
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 682
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 683
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$24;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$24;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    .line 690
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 691
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 692
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->messageColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$2900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_22

    .line 693
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 696
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 697
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 698
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$25;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$25;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    const v5, -0x7f7f80

    .line 704
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 705
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 706
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->highlightSearchColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$3000(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_23

    .line 707
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 710
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 711
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 712
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$26;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$26;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    .line 718
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 719
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 720
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->memberColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$3100(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_24

    .line 721
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 724
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 725
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 726
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$27;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$27;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->darkColor:I

    .line 733
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 735
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 736
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->mediaColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$3200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_25

    .line 737
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 740
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 741
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 742
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$28;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/ThemingChatsActivity$3$28;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;)V

    const-string/jumbo v5, "chatsMediaColor"

    const-string/jumbo v6, "chatsMemberColor"

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->darkColor:I

    .line 749
    move-object/from16 v0, v19

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 751
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 752
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->typingColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$3300(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_26

    .line 753
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 756
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 757
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 758
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$29;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$29;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    .line 764
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 766
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 767
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->timeColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$3400(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_27

    .line 768
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 771
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 772
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 773
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$30;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$30;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    const v5, -0x666667

    .line 779
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 780
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 781
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->countColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$3500(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_28

    .line 782
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 785
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 786
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 787
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$31;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$31;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    const/4 v5, -0x1

    .line 793
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 794
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 795
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->countBGColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$3600(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_29

    .line 796
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 799
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 800
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 801
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$32;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$32;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    .line 808
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 809
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 810
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->countSilentBGColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$3700(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_2a

    .line 811
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 814
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 815
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 816
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$33;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$33;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    const-string/jumbo v5, "chatsCountBGColor"

    const v6, -0x464647

    .line 823
    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 824
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 825
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->avatarRadiusRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$3800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_2b

    .line 826
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 829
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 830
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "AvatarRadius"

    const v4, 0x7f0700c9

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 831
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 833
    .local v17, "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 834
    const/16 v3, 0x20

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 835
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatsAvatarRadius:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 836
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 838
    const-string/jumbo v3, "Done"

    const v4, 0x7f070234

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$34;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$34;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Lorg/telegram/ui/Components/NumberPicker;Ljava/lang/String;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 848
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 849
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->tabsTextSizeRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$3900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_2c

    .line 850
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 853
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 854
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "TabsTextSize"

    const v4, 0x7f0706c9

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 855
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 856
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 857
    const/16 v3, 0x12

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 858
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsTextSize:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 859
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 860
    const-string/jumbo v3, "Done"

    const v4, 0x7f070234

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$35;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$35;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Lorg/telegram/ui/Components/NumberPicker;Ljava/lang/String;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 873
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 874
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->tabsCounterSizeRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$4000(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_2d

    .line 875
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 878
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 879
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "CountSize"

    const v4, 0x7f0701d2

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 880
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 882
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 883
    const/16 v3, 0xe

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 884
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatsTabCounterSize:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 885
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 886
    const-string/jumbo v3, "Done"

    const v4, 0x7f070234

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$36;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$36;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Lorg/telegram/ui/Components/NumberPicker;Ljava/lang/String;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 896
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 897
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->avatarSizeRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$4100(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_2e

    .line 898
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 901
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 902
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "AvatarSize"

    const v4, 0x7f0700ca

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 903
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 905
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 906
    const/16 v3, 0x48

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 907
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatsAvatarSize:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 908
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 909
    const-string/jumbo v3, "Done"

    const v4, 0x7f070234

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$37;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$37;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Lorg/telegram/ui/Components/NumberPicker;Ljava/lang/String;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 918
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 919
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->avatarMarginLeftRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$4200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_2f

    .line 920
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 923
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 924
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "AvatarMarginLeft"

    const v4, 0x7f0700c8

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 925
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 927
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 928
    const/16 v3, 0x12

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 929
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatsAvatarMarginLeft:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 930
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 932
    const-string/jumbo v3, "Done"

    const v4, 0x7f070234

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$38;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$38;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Lorg/telegram/ui/Components/NumberPicker;Ljava/lang/String;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 942
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 943
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->nameSizeRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$4300(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_30

    .line 944
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 947
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 948
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "NameSize"

    const v4, 0x7f07044e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 949
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 951
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v3, 0xc

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 952
    const/16 v3, 0x1e

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 953
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatsNameSize:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 954
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 955
    const-string/jumbo v3, "Done"

    const v4, 0x7f070234

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$39;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$39;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Lorg/telegram/ui/Components/NumberPicker;Ljava/lang/String;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 963
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 968
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 970
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->groupNameSizeRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$4400(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_31

    .line 971
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 974
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 975
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "GroupNameSize"

    const v4, 0x7f07033c

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 976
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 977
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatsNameSize:I

    move-object/from16 v0, v19

    invoke-interface {v0, v15, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 978
    .local v12, "currentValue":I
    const/16 v3, 0xc

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 979
    const/16 v3, 0x1e

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 980
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 981
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 982
    const-string/jumbo v3, "Done"

    const v4, 0x7f070234

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$40;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v12, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$40;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Lorg/telegram/ui/Components/NumberPicker;ILjava/lang/String;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 989
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 990
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 992
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v12    # "currentValue":I
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->messageSizeRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$4500(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_32

    .line 993
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 996
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 997
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "MessageSize"

    const v4, 0x7f070429

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 998
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 999
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v3, 0x10

    move-object/from16 v0, v19

    invoke-interface {v0, v15, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 1000
    .restart local v12    # "currentValue":I
    const/16 v3, 0xc

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 1001
    const/16 v3, 0x1e

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 1002
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 1003
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1004
    const-string/jumbo v3, "Done"

    const v4, 0x7f070234

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$41;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v12, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$41;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Lorg/telegram/ui/Components/NumberPicker;ILjava/lang/String;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1012
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 1013
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v12    # "currentValue":I
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->timeSizeRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$4600(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_33

    .line 1014
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1017
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1018
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "TimeDateSize"

    const v4, 0x7f0706e1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1019
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 1020
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v3, 0xd

    move-object/from16 v0, v19

    invoke-interface {v0, v15, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 1021
    .restart local v12    # "currentValue":I
    const/4 v3, 0x5

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 1022
    const/16 v3, 0x19

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 1023
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 1024
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1025
    const-string/jumbo v3, "Done"

    const v4, 0x7f070234

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$42;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v12, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$42;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Lorg/telegram/ui/Components/NumberPicker;ILjava/lang/String;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1033
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 1034
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v12    # "currentValue":I
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_33
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->countSizeRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$4700(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_34

    .line 1035
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1038
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1039
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "CountSize"

    const v4, 0x7f0701d2

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1040
    new-instance v17, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 1042
    .restart local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 1043
    const/16 v3, 0x14

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 1044
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatsCountSize:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 1045
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1046
    const-string/jumbo v3, "Done"

    const v4, 0x7f070234

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$43;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$43;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Lorg/telegram/ui/Components/NumberPicker;Ljava/lang/String;)V

    invoke-virtual {v11, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1055
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ThemingChatsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 1056
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v17    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->floatingPencilColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$4800(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_35

    .line 1057
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1060
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 1061
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1062
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$44;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$44;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    const/4 v5, -0x1

    .line 1069
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 1070
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 1071
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->floatingBGColorRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$4900(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_36

    .line 1072
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1075
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 1076
    .restart local v16    # "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1077
    new-instance v2, Lorg/telegram/ui/Components/ColorSelectorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ThemingChatsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ThemingChatsActivity$3$45;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lorg/telegram/ui/ThemingChatsActivity$3$45;-><init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    .line 1084
    move-object/from16 v0, v19

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ColorSelectorDialog;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;IIIZ)V

    .line 1085
    .restart local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ColorSelectorDialog;->show()V

    goto/16 :goto_1

    .line 1086
    .end local v2    # "colorDialog":Lorg/telegram/ui/Components/ColorSelectorDialog;
    .end local v16    # "li":Landroid/view/LayoutInflater;
    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->hideStatusIndicatorCheckRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$5000(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_38

    .line 1088
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsHideStatusIndicator:Z

    if-nez v3, :cond_37

    const/4 v3, 0x1

    :goto_4
    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsHideStatusIndicator:Z

    .line 1089
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 1090
    .restart local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsHideStatusIndicator:Z

    invoke-interface {v13, v15, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1091
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1092
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_0

    .line 1093
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsHideStatusIndicator:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_1

    .line 1088
    .end local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_37
    const/4 v3, 0x0

    goto :goto_4

    .line 1095
    :cond_38
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->tabsToBottomRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$5100(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_3a

    .line 1096
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsToBottom:Z

    if-nez v3, :cond_39

    const/4 v3, 0x1

    :goto_5
    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsToBottom:Z

    .line 1097
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 1098
    .restart local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsToBottom:Z

    invoke-interface {v13, v15, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1099
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1100
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "plusconfig"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 1101
    .local v14, "editorPlus":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "tabsToBottom"

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsToBottom:Z

    invoke-interface {v14, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1102
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1103
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1104
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_0

    .line 1105
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsToBottom:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_1

    .line 1096
    .end local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "editorPlus":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_39
    const/4 v3, 0x0

    goto :goto_5

    .line 1107
    :cond_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->tabsTextModeRow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$5200(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_3c

    .line 1108
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsTabTitlesMode:Z

    if-nez v3, :cond_3b

    const/4 v3, 0x1

    :goto_6
    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->plusTabTitlesMode:Z

    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsTabTitlesMode:Z

    .line 1109
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 1110
    .restart local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsTabTitlesMode:Z

    invoke-interface {v13, v15, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1111
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1112
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "plusconfig"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 1113
    .restart local v14    # "editorPlus":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "tabTitlesMode"

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->chatsTabTitlesMode:Z

    invoke-interface {v14, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1114
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1115
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1116
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_0

    .line 1117
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsTabTitlesMode:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_1

    .line 1108
    .end local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "editorPlus":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_3b
    const/4 v3, 0x0

    goto :goto_6

    .line 1119
    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    # getter for: Lorg/telegram/ui/ThemingChatsActivity;->hideHeaderShadow:I
    invoke-static {v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$5300(Lorg/telegram/ui/ThemingChatsActivity;)I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_0

    .line 1120
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsHideHeaderShadow:Z

    if-nez v3, :cond_3e

    const/4 v3, 0x1

    :goto_7
    sput-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsHideHeaderShadow:Z

    .line 1121
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 1122
    .restart local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsHideHeaderShadow:Z

    invoke-interface {v13, v15, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1123
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1124
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_3d

    .line 1125
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->chatsHideHeaderShadow:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 1127
    :cond_3d
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->updateDialogsTheme:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1120
    .end local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p2    # "view":Landroid/view/View;
    :cond_3e
    const/4 v3, 0x0

    goto :goto_7
.end method
