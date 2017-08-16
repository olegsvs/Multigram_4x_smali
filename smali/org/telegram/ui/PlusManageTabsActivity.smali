.class public Lorg/telegram/ui/PlusManageTabsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PlusManageTabsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PlusManageTabsActivity$TabCheckCell;,
        Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;,
        Lorg/telegram/ui/PlusManageTabsActivity$SimpleItemTouchHelperCallback;,
        Lorg/telegram/ui/PlusManageTabsActivity$ItemTouchHelperViewHolder;,
        Lorg/telegram/ui/PlusManageTabsActivity$ItemTouchHelperAdapter;
    }
.end annotation


# instance fields
.field private color:I

.field private disabledColor:I

.field private listAdapter:Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private needReorder:Z

.field private tabs:[I

.field private tabsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tabs_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private visible:[I

.field private visibleChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    .line 50
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 59
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefTitleColor:I

    :goto_0
    iput v0, p0, Lorg/telegram/ui/PlusManageTabsActivity;->color:I

    .line 60
    iget v0, p0, Lorg/telegram/ui/PlusManageTabsActivity;->color:I

    const v1, 0x3ea8f5c3    # 0.33f

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->getIntAlphaColor(IF)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PlusManageTabsActivity;->disabledColor:I

    .line 64
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity;->tabs:[I

    .line 65
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity;->visible:[I

    .line 511
    return-void

    .line 59
    :cond_0
    const-string/jumbo v0, "windowBackgroundWhiteBlackText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 64
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    .line 65
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/PlusManageTabsActivity;)[I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusManageTabsActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity;->tabs:[I

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PlusManageTabsActivity;)[I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusManageTabsActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity;->visible:[I

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PlusManageTabsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusManageTabsActivity;

    .prologue
    .line 50
    iget v0, p0, Lorg/telegram/ui/PlusManageTabsActivity;->disabledColor:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PlusManageTabsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PlusManageTabsActivity;

    .prologue
    .line 50
    iget v0, p0, Lorg/telegram/ui/PlusManageTabsActivity;->color:I

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/PlusManageTabsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PlusManageTabsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lorg/telegram/ui/PlusManageTabsActivity;->needReorder:Z

    return p1
.end method

.method static synthetic access$502(Lorg/telegram/ui/PlusManageTabsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PlusManageTabsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lorg/telegram/ui/PlusManageTabsActivity;->visibleChanged:Z

    return p1
.end method

.method private changeVisibility(IZ)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "visible"    # Z

    .prologue
    const/4 v4, 0x0

    .line 206
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "plusconfig"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 207
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 208
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    packed-switch p1, :pswitch_data_0

    .line 256
    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 257
    return-void

    .line 210
    :pswitch_1
    sput-boolean p2, Lorg/telegram/ui/ActionBar/Theme;->plusHideAllTab:Z

    .line 211
    const-string/jumbo v2, "hideAllTab"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 214
    :pswitch_2
    sput-boolean p2, Lorg/telegram/ui/ActionBar/Theme;->plusHideUsersTab:Z

    .line 215
    const-string/jumbo v2, "hideUsers"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 218
    :pswitch_3
    sput-boolean p2, Lorg/telegram/ui/ActionBar/Theme;->plusHideGroupsTab:Z

    .line 219
    const-string/jumbo v2, "hideGroups"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 222
    :pswitch_4
    sput-boolean p2, Lorg/telegram/ui/ActionBar/Theme;->plusHideSuperGroupsTab:Z

    .line 223
    const-string/jumbo v2, "hideSGroups"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 226
    :pswitch_5
    sput-boolean p2, Lorg/telegram/ui/ActionBar/Theme;->plusHideChannelsTab:Z

    .line 227
    const-string/jumbo v2, "hideChannels"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 230
    :pswitch_6
    sput-boolean p2, Lorg/telegram/ui/ActionBar/Theme;->plusHideBotsTab:Z

    .line 231
    const-string/jumbo v2, "hideBots"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 234
    :pswitch_7
    sput-boolean p2, Lorg/telegram/ui/ActionBar/Theme;->plusHideFavsTab:Z

    .line 235
    const-string/jumbo v2, "hideFavs"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 238
    :pswitch_8
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->plusHideAdminTab:Z

    if-eq v2, p2, :cond_0

    .line 239
    sput-boolean p2, Lorg/telegram/ui/ActionBar/Theme;->plusHideAdminTab:Z

    .line 240
    const-string/jumbo v2, "hideAdmin"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 241
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->plusHideAdminTab:Z

    if-nez v2, :cond_0

    .line 242
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    .line 243
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 248
    :pswitch_9
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->plusHideUnreadTab:Z

    if-eq v2, p2, :cond_0

    .line 249
    sput-boolean p2, Lorg/telegram/ui/ActionBar/Theme;->plusHideUnreadTab:Z

    .line 250
    const-string/jumbo v2, "hideUnread"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private getTabsArray()V
    .locals 9

    .prologue
    .line 164
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "plusconfig"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 165
    .local v2, "plusPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "tabs_array"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 166
    .local v5, "stringArray":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 167
    const/4 v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "split":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_1

    .line 170
    :try_start_0
    aget-object v3, v4, v1

    .line 171
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/PlusManageTabsActivity;->tabs:[I

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lorg/telegram/ui/PlusManageTabsActivity;->tabs:[I

    aput v1, v6, v1

    .line 174
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 179
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v4    # "split":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private getTabsArrayList()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 182
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/PlusManageTabsActivity;->tabs_list:Ljava/util/ArrayList;

    .line 183
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v8, "plusconfig"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 184
    .local v3, "plusPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v7, "tabs_list"

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, "stringArray":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 186
    const/4 v7, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, "split":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v5

    if-ge v1, v7, :cond_3

    .line 189
    :try_start_0
    aget-object v4, v5, v1

    .line 190
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lorg/telegram/ui/PlusManageTabsActivity;->tabs_list:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 196
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v5    # "split":[Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    const-string/jumbo v7, "tabs_size"

    iget-object v8, p0, Lorg/telegram/ui/PlusManageTabsActivity;->tabs:[I

    array-length v8, v8

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 197
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tab_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 198
    .local v2, "p":I
    iget-object v7, p0, Lorg/telegram/ui/PlusManageTabsActivity;->tabs_list:Ljava/util/ArrayList;

    if-eq v2, v10, :cond_2

    .end local v2    # "p":I
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .restart local v2    # "p":I
    :cond_2
    move v2, v1

    .line 198
    goto :goto_3

    .line 202
    .end local v2    # "p":I
    :cond_3
    return-void
.end method

.method private getVisibilityArray()V
    .locals 9

    .prologue
    .line 146
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "plusconfig"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 147
    .local v2, "plusPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "tabs_visible"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, "stringArray":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 150
    const/4 v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "split":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_1

    .line 153
    :try_start_0
    aget-object v3, v4, v1

    .line 154
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/PlusManageTabsActivity;->visible:[I

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lorg/telegram/ui/PlusManageTabsActivity;->visible:[I

    const/4 v7, -0x1

    aput v7, v6, v1

    .line 157
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 161
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v4    # "split":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private refreshVisibility()V
    .locals 4

    .prologue
    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/PlusManageTabsActivity;->visible:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 139
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->tabType:[I

    iget-object v3, p0, Lorg/telegram/ui/PlusManageTabsActivity;->tabs:[I

    aget v3, v3, v0

    aget v1, v2, v3

    .line 140
    .local v1, "type":I
    iget-object v2, p0, Lorg/telegram/ui/PlusManageTabsActivity;->visible:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/PlusManageTabsActivity;->changeVisibility(IZ)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 143
    .end local v1    # "type":I
    :cond_1
    return-void
.end method

.method private saveArray()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 89
    invoke-direct {p0}, Lorg/telegram/ui/PlusManageTabsActivity;->storeTabsArray()V

    .line 90
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/PlusManageTabsActivity;->tabs_list:Ljava/util/ArrayList;

    .line 91
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v8, "plusconfig"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 92
    .local v4, "plusPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 93
    .local v3, "mEdit":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v7, "tabs_size"

    invoke-interface {v3, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    iget-object v7, p0, Lorg/telegram/ui/PlusManageTabsActivity;->tabs:[I

    array-length v6, v7

    .line 96
    .local v6, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lorg/telegram/ui/PlusManageTabsActivity;->tabs:[I

    array-length v7, v7

    if-ge v2, v7, :cond_1

    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tab_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    iget-boolean v7, p0, Lorg/telegram/ui/PlusManageTabsActivity;->visibleChanged:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/telegram/ui/PlusManageTabsActivity;->visible:[I

    aget v7, v7, v2

    if-gez v7, :cond_0

    .line 100
    add-int/lit8 v6, v6, -0x1

    .line 96
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_0
    iget-object v7, p0, Lorg/telegram/ui/PlusManageTabsActivity;->tabs_list:Ljava/util/ArrayList;

    iget-object v8, p0, Lorg/telegram/ui/PlusManageTabsActivity;->tabs:[I

    aget v8, v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    :cond_1
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    invoke-direct {p0}, Lorg/telegram/ui/PlusManageTabsActivity;->storeTabsArrayList()V

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "changed":Z
    const/4 v7, 0x2

    if-ge v6, v7, :cond_4

    .line 112
    const/4 v7, 0x1

    sput-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    .line 113
    const/4 v0, 0x1

    .line 120
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 121
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v8, "plusconfig"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 122
    .local v5, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 123
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v7, "hideTabs"

    sget-boolean v8, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "preferences":Landroid/content/SharedPreferences;
    :cond_3
    return-void

    .line 115
    :cond_4
    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-eqz v7, :cond_2

    .line 116
    sput-boolean v9, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    .line 117
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private sendReorder()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 480
    iget-boolean v0, p0, Lorg/telegram/ui/PlusManageTabsActivity;->visibleChanged:Z

    if-eqz v0, :cond_0

    .line 481
    invoke-direct {p0}, Lorg/telegram/ui/PlusManageTabsActivity;->storeVisibilityArray()V

    .line 482
    iput-boolean v2, p0, Lorg/telegram/ui/PlusManageTabsActivity;->needReorder:Z

    .line 484
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/PlusManageTabsActivity;->needReorder:Z

    if-nez v0, :cond_1

    .line 491
    :goto_0
    return-void

    .line 487
    :cond_1
    iput-boolean v4, p0, Lorg/telegram/ui/PlusManageTabsActivity;->needReorder:Z

    .line 488
    invoke-direct {p0}, Lorg/telegram/ui/PlusManageTabsActivity;->saveArray()V

    .line 489
    iput-boolean v4, p0, Lorg/telegram/ui/PlusManageTabsActivity;->visibleChanged:Z

    .line 490
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private storeTabsArray()V
    .locals 5

    .prologue
    .line 82
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "plusconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 83
    .local v1, "plusPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    .local v0, "mEdit":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "tabs_array"

    iget-object v3, p0, Lorg/telegram/ui/PlusManageTabsActivity;->tabs:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    return-void
.end method

.method private storeTabsArrayList()V
    .locals 5

    .prologue
    .line 130
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "plusconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 131
    .local v1, "plusPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 132
    .local v0, "mEdit":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "tabs_list"

    iget-object v3, p0, Lorg/telegram/ui/PlusManageTabsActivity;->tabs_list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 134
    return-void
.end method

.method private storeVisibilityArray()V
    .locals 5

    .prologue
    .line 75
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "plusconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 76
    .local v1, "plusPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    .local v0, "mEdit":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "tabs_visible"

    iget-object v3, p0, Lorg/telegram/ui/PlusManageTabsActivity;->visible:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    invoke-direct {p0}, Lorg/telegram/ui/PlusManageTabsActivity;->refreshVisibility()V

    .line 79
    return-void
.end method

.method private updateTheme()V
    .locals 4

    .prologue
    .line 503
    iget-object v1, p0, Lorg/telegram/ui/PlusManageTabsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 504
    iget-object v1, p0, Lorg/telegram/ui/PlusManageTabsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarTitleColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 505
    invoke-virtual {p0}, Lorg/telegram/ui/PlusManageTabsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 506
    .local v0, "back":Landroid/graphics/drawable/Drawable;
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 507
    iget-object v1, p0, Lorg/telegram/ui/PlusManageTabsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 508
    iget-object v1, p0, Lorg/telegram/ui/PlusManageTabsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 509
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 428
    iget-object v6, p0, Lorg/telegram/ui/PlusManageTabsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v7, 0x7f0200bc

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 429
    iget-object v6, p0, Lorg/telegram/ui/PlusManageTabsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 431
    iget-object v6, p0, Lorg/telegram/ui/PlusManageTabsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v7, "Tabs"

    const v8, 0x7f0706c6

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v6, p0, Lorg/telegram/ui/PlusManageTabsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v7, Lorg/telegram/ui/PlusManageTabsActivity$1;

    invoke-direct {v7, p0}, Lorg/telegram/ui/PlusManageTabsActivity$1;-><init>(Lorg/telegram/ui/PlusManageTabsActivity;)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 442
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/PlusManageTabsActivity;->fragmentView:Landroid/view/View;

    .line 443
    iget-object v1, p0, Lorg/telegram/ui/PlusManageTabsActivity;->fragmentView:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    .line 446
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 447
    .local v2, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 448
    const v6, -0xf0f10

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 449
    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v10, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    new-instance v6, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v6, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/PlusManageTabsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 453
    iget-object v6, p0, Lorg/telegram/ui/PlusManageTabsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setFocusable(Z)V

    .line 455
    sget-boolean v6, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/PlusManageTabsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundColor(I)V

    .line 456
    :cond_0
    new-instance v3, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {v3, p1}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 457
    .local v3, "layoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-virtual {v3, v9}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 458
    iget-object v6, p0, Lorg/telegram/ui/PlusManageTabsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 460
    new-instance v6, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;-><init>(Lorg/telegram/ui/PlusManageTabsActivity;Lorg/telegram/ui/PlusManageTabsActivity$1;)V

    iput-object v6, p0, Lorg/telegram/ui/PlusManageTabsActivity;->listAdapter:Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;

    .line 461
    new-instance v0, Lorg/telegram/ui/PlusManageTabsActivity$SimpleItemTouchHelperCallback;

    iget-object v6, p0, Lorg/telegram/ui/PlusManageTabsActivity;->listAdapter:Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;

    invoke-direct {v0, p0, v6}, Lorg/telegram/ui/PlusManageTabsActivity$SimpleItemTouchHelperCallback;-><init>(Lorg/telegram/ui/PlusManageTabsActivity;Lorg/telegram/ui/PlusManageTabsActivity$ItemTouchHelperAdapter;)V

    .line 462
    .local v0, "callback":Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;
    new-instance v4, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    invoke-direct {v4, v0}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;-><init>(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;)V

    .line 463
    .local v4, "mItemTouchHelper":Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;
    iget-object v6, p0, Lorg/telegram/ui/PlusManageTabsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->attachToRecyclerView(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 465
    iget-object v6, p0, Lorg/telegram/ui/PlusManageTabsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x3

    invoke-static {v10, v7, v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    iget-object v6, p0, Lorg/telegram/ui/PlusManageTabsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v7, p0, Lorg/telegram/ui/PlusManageTabsActivity;->listAdapter:Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 469
    new-instance v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v5, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 471
    .local v5, "textInfoCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    const-string/jumbo v6, "TabsScreenInfo"

    const v7, 0x7f0707ce

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 473
    const/4 v6, -0x2

    const/16 v7, 0x53

    invoke-static {v10, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    iget-object v6, p0, Lorg/telegram/ui/PlusManageTabsActivity;->fragmentView:Landroid/view/View;

    return-object v6
.end method

.method public onFragmentCreate()Z
    .locals 1

    .prologue
    .line 407
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 409
    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity;->tabsArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 410
    invoke-direct {p0}, Lorg/telegram/ui/PlusManageTabsActivity;->getVisibilityArray()V

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity;->tabsArray:Ljava/util/ArrayList;

    .line 413
    invoke-direct {p0}, Lorg/telegram/ui/PlusManageTabsActivity;->getTabsArray()V

    .line 414
    invoke-direct {p0}, Lorg/telegram/ui/PlusManageTabsActivity;->getTabsArrayList()V

    .line 417
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 0

    .prologue
    .line 422
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 423
    invoke-direct {p0}, Lorg/telegram/ui/PlusManageTabsActivity;->sendReorder()V

    .line 424
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 495
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 496
    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity;->listAdapter:Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/PlusManageTabsActivity;->listAdapter:Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/PlusManageTabsActivity$RecyclerListAdapter;->notifyDataSetChanged()V

    .line 499
    :cond_0
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/PlusManageTabsActivity;->updateTheme()V

    .line 500
    :cond_1
    return-void
.end method
