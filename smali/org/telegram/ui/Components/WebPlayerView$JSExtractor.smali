.class Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;
.super Ljava/lang/Object;
.source "WebPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/WebPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JSExtractor"
.end annotation


# instance fields
.field private assign_operators:[Ljava/lang/String;

.field codeLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private jsCode:Ljava/lang/String;

.field private operators:[Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/ui/Components/WebPlayerView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/WebPlayerView;Ljava/lang/String;)V
    .locals 8
    .param p2, "js"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 195
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->codeLines:Ljava/util/ArrayList;

    .line 192
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "|"

    aput-object v1, v0, v3

    const-string/jumbo v1, "^"

    aput-object v1, v0, v4

    const-string/jumbo v1, "&"

    aput-object v1, v0, v5

    const-string/jumbo v1, ">>"

    aput-object v1, v0, v6

    const-string/jumbo v1, "<<"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "+"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "%"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "*"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->operators:[Ljava/lang/String;

    .line 193
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "|="

    aput-object v1, v0, v3

    const-string/jumbo v1, "^="

    aput-object v1, v0, v4

    const-string/jumbo v1, "&="

    aput-object v1, v0, v5

    const-string/jumbo v1, ">>="

    aput-object v1, v0, v6

    const-string/jumbo v1, "<<="

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "-="

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "+="

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "%="

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "/="

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "*="

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "="

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->assign_operators:[Ljava/lang/String;

    .line 196
    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->jsCode:Ljava/lang/String;

    .line 197
    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->extractFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildFunction([Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "argNames"    # [Ljava/lang/String;
    .param p2, "funcCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 382
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 383
    .local v2, "localVars":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_0

    .line 384
    aget-object v4, p1, v0

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    :cond_0
    const-string/jumbo v4, ";"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, "stmts":[Ljava/lang/String;
    const/4 v4, 0x1

    new-array v1, v4, [Z

    .line 388
    .local v1, "abort":[Z
    const/4 v0, 0x0

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 389
    aget-object v4, v3, v0

    const/16 v5, 0x64

    invoke-direct {p0, v4, v2, v1, v5}, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->interpretStatement(Ljava/lang/String;Ljava/util/HashMap;[ZI)V

    .line 390
    const/4 v4, 0x0

    aget-boolean v4, v1, v4

    if-eqz v4, :cond_2

    .line 394
    :cond_1
    return-void

    .line 388
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private extractFunction(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "funcName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 398
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 399
    .local v4, "quote":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "(?x)(?:function\\s+%s|[{;,]\\s*%s\\s*=\\s*function|var\\s+%s\\s*=\\s*function)\\s*\\(([^)]*)\\)\\s*\\{([^}]+)\\}"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 400
    .local v1, "funcPattern":Ljava/util/regex/Pattern;
    iget-object v5, p0, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->jsCode:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 401
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 402
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, "group":Ljava/lang/String;
    iget-object v5, p0, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->codeLines:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 404
    iget-object v5, p0, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->codeLines:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->buildFunction([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    .end local v1    # "funcPattern":Ljava/util/regex/Pattern;
    .end local v2    # "group":Ljava/lang/String;
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "quote":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string/jumbo v5, ""

    iget-object v6, p0, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->codeLines:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->codeLines:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 410
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private extractObject(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 13
    .param p1, "objname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 356
    const-string/jumbo v3, "(?:[a-zA-Z$0-9]+|\"[a-zA-Z$0-9]+\"|\'[a-zA-Z$0-9]+\')"

    .line 357
    .local v3, "funcName":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 359
    .local v5, "obj":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "(?:var\\s+)?%s\\s*=\\s*\\{\\s*((%s\\s*:\\s*function\\(.*?\\)\\s*\\{.*?\\}(?:,\\s*)?)*)\\}\\s*;"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    aput-object v3, v8, v12

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->jsCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 360
    .local v4, "matcher":Ljava/util/regex/Matcher;
    const/4 v2, 0x0

    .line 361
    .local v2, "fields":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 362
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "code":Ljava/lang/String;
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 364
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 367
    iget-object v6, p0, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->codeLines:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 368
    iget-object v6, p0, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->codeLines:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    .end local v1    # "code":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "(%s)\\s*:\\s*function\\(([a-z,]+)\\)\\{([^}]+)\\}"

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v3, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 374
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 375
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "argnames":[Ljava/lang/String;
    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v6}, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->buildFunction([Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    .end local v0    # "argnames":[Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method private interpretExpression(Ljava/lang/String;Ljava/util/HashMap;I)V
    .locals 26
    .param p1, "expr"    # Ljava/lang/String;
    .param p3, "allowRecursion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 200
    .local p2, "localVars":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 201
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x28

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 205
    const/16 v16, 0x0

    .line 206
    .local v16, "parens_count":I
    invoke-static {}, Lorg/telegram/ui/Components/WebPlayerView;->access$300()Ljava/util/regex/Pattern;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 207
    .local v14, "matcher":Ljava/util/regex/Matcher;
    :cond_2
    :goto_1
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 208
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 209
    .local v10, "group":Ljava/lang/String;
    const/16 v21, 0x30

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    const/16 v22, 0x28

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 210
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 212
    :cond_3
    add-int/lit8 v16, v16, -0x1

    .line 213
    if-nez v16, :cond_2

    .line 214
    const/16 v21, 0x1

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->start()I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 215
    .local v18, "sub_expr":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->interpretExpression(Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 216
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->end()I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 217
    .local v17, "remaining_expr":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 220
    move-object/from16 p1, v17

    .line 226
    .end local v10    # "group":Ljava/lang/String;
    .end local v17    # "remaining_expr":Ljava/lang/String;
    .end local v18    # "sub_expr":Ljava/lang/String;
    :cond_4
    if-eqz v16, :cond_5

    .line 227
    new-instance v21, Ljava/lang/Exception;

    const-string/jumbo v22, "Premature end of parens in %s"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object p1, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v21

    .line 230
    .end local v14    # "matcher":Ljava/util/regex/Matcher;
    .end local v16    # "parens_count":I
    :cond_5
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->assign_operators:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v4, v0, :cond_8

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->assign_operators:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v9, v21, v4

    .line 232
    .local v9, "func":Ljava/lang/String;
    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v22, "(?x)(%s)(?:\\[([^\\]]+?)\\])?\\s*%s(.*)$"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "[a-zA-Z_$][a-zA-Z_$0-9]*"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static {v9}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v21 .. v23}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 233
    .restart local v14    # "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-nez v21, :cond_6

    .line 230
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 236
    :cond_6
    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    add-int/lit8 v22, p3, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->interpretExpression(Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 237
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 238
    .local v11, "index":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 239
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v11, v1, v2}, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->interpretExpression(Ljava/lang/String;Ljava/util/HashMap;I)V

    goto/16 :goto_0

    .line 241
    :cond_7
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 247
    .end local v9    # "func":Ljava/lang/String;
    .end local v11    # "index":Ljava/lang/String;
    .end local v14    # "matcher":Ljava/util/regex/Matcher;
    :cond_8
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 249
    :catch_0
    move-exception v21

    .line 253
    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v22, "(?!if|return|true|false)(%s)$"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "[a-zA-Z_$][a-zA-Z_$0-9]*"

    aput-object v25, v23, v24

    invoke-static/range {v21 .. v23}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 254
    .restart local v14    # "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-nez v21, :cond_0

    .line 258
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 262
    :cond_9
    :try_start_1
    new-instance v21, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 264
    :catch_1
    move-exception v21

    .line 268
    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v22, "(%s)\\[(.+)\\]$"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "[a-zA-Z_$][a-zA-Z_$0-9]*"

    aput-object v25, v23, v24

    invoke-static/range {v21 .. v23}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 269
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 270
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v19

    .line 271
    .local v19, "val":Ljava/lang/String;
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    add-int/lit8 v22, p3, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->interpretExpression(Ljava/lang/String;Ljava/util/HashMap;I)V

    goto/16 :goto_0

    .line 275
    .end local v19    # "val":Ljava/lang/String;
    :cond_a
    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v22, "(%s)(?:\\.([^(]+)|\\[([^]]+)\\])\\s*(?:\\(+([^()]*)\\))?$"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "[a-zA-Z_$][a-zA-Z_$0-9]*"

    aput-object v25, v23, v24

    invoke-static/range {v21 .. v23}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 276
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-eqz v21, :cond_e

    .line 277
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v20

    .line 278
    .local v20, "variable":Ljava/lang/String;
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 279
    .local v12, "m1":Ljava/lang/String;
    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 280
    .local v13, "m2":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_c

    .end local v13    # "m2":Ljava/lang/String;
    :goto_3
    const-string/jumbo v21, "\""

    const-string/jumbo v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 281
    .local v15, "member":Ljava/lang/String;
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 282
    .local v6, "arg_str":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-nez v21, :cond_b

    .line 283
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->extractObject(Ljava/lang/String;)Ljava/util/HashMap;

    .line 285
    :cond_b
    if-eqz v6, :cond_0

    .line 288
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x29

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    .line 289
    new-instance v21, Ljava/lang/Exception;

    const-string/jumbo v22, "last char not \')\'"

    invoke-direct/range {v21 .. v22}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v21

    .end local v6    # "arg_str":Ljava/lang/String;
    .end local v15    # "member":Ljava/lang/String;
    .restart local v13    # "m2":Ljava/lang/String;
    :cond_c
    move-object v13, v12

    .line 280
    goto :goto_3

    .line 292
    .end local v13    # "m2":Ljava/lang/String;
    .restart local v6    # "arg_str":Ljava/lang/String;
    .restart local v15    # "member":Ljava/lang/String;
    :cond_d
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_0

    .line 293
    const-string/jumbo v21, ","

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 294
    .local v7, "args":[Ljava/lang/String;
    const/4 v4, 0x0

    :goto_4
    array-length v0, v7

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v4, v0, :cond_0

    .line 295
    aget-object v21, v7, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->interpretExpression(Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 294
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 301
    .end local v6    # "arg_str":Ljava/lang/String;
    .end local v7    # "args":[Ljava/lang/String;
    .end local v12    # "m1":Ljava/lang/String;
    .end local v15    # "member":Ljava/lang/String;
    .end local v20    # "variable":Ljava/lang/String;
    :cond_e
    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v22, "(%s)\\[(.+)\\]$"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "[a-zA-Z_$][a-zA-Z_$0-9]*"

    aput-object v25, v23, v24

    invoke-static/range {v21 .. v23}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 302
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-eqz v21, :cond_f

    .line 303
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 304
    .local v19, "val":Ljava/lang/Object;
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    add-int/lit8 v22, p3, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->interpretExpression(Ljava/lang/String;Ljava/util/HashMap;I)V

    goto/16 :goto_0

    .line 308
    .end local v19    # "val":Ljava/lang/Object;
    :cond_f
    const/4 v4, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->operators:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v4, v0, :cond_13

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->operators:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v9, v21, v4

    .line 310
    .restart local v9    # "func":Ljava/lang/String;
    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v22, "(.+?)%s(.+)"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v9}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v21 .. v23}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 311
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-nez v21, :cond_11

    .line 308
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 314
    :cond_11
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v5, v0, [Z

    .line 315
    .local v5, "abort":[Z
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    add-int/lit8 v22, p3, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->interpretStatement(Ljava/lang/String;Ljava/util/HashMap;[ZI)V

    .line 316
    const/16 v21, 0x0

    aget-boolean v21, v5, v21

    if-eqz v21, :cond_12

    .line 317
    new-instance v21, Ljava/lang/Exception;

    const-string/jumbo v22, "Premature left-side return of %s in %s"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v9, v23, v24

    const/16 v24, 0x1

    aput-object p1, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v21

    .line 319
    :cond_12
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    add-int/lit8 v22, p3, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v5, v3}, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->interpretStatement(Ljava/lang/String;Ljava/util/HashMap;[ZI)V

    .line 320
    const/16 v21, 0x0

    aget-boolean v21, v5, v21

    if-eqz v21, :cond_10

    .line 321
    new-instance v21, Ljava/lang/Exception;

    const-string/jumbo v22, "Premature right-side return of %s in %s"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v9, v23, v24

    const/16 v24, 0x1

    aput-object p1, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v21

    .line 325
    .end local v5    # "abort":[Z
    .end local v9    # "func":Ljava/lang/String;
    :cond_13
    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v22, "^(%s)\\(([a-zA-Z0-9_$,]*)\\)$"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "[a-zA-Z_$][a-zA-Z_$0-9]*"

    aput-object v25, v23, v24

    invoke-static/range {v21 .. v23}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 326
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-eqz v21, :cond_14

    .line 327
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 328
    .local v8, "fname":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->extractFunction(Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .end local v8    # "fname":Ljava/lang/String;
    :cond_14
    new-instance v21, Ljava/lang/Exception;

    const-string/jumbo v22, "Unsupported JS expression %s"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object p1, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v21
.end method

.method private interpretStatement(Ljava/lang/String;Ljava/util/HashMap;[ZI)V
    .locals 4
    .param p1, "stmt"    # Ljava/lang/String;
    .param p3, "abort"    # [Z
    .param p4, "allowRecursion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[ZI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "localVars":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 334
    if-gez p4, :cond_0

    .line 335
    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "recursion limit reached"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 337
    :cond_0
    aput-boolean v3, p3, v3

    .line 338
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 339
    invoke-static {}, Lorg/telegram/ui/Components/WebPlayerView;->access$400()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 341
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "expr":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0, p2, p4}, Lorg/telegram/ui/Components/WebPlayerView$JSExtractor;->interpretExpression(Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 353
    return-void

    .line 344
    .end local v0    # "expr":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lorg/telegram/ui/Components/WebPlayerView;->access$500()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 345
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 346
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 347
    .restart local v0    # "expr":Ljava/lang/String;
    const/4 v2, 0x1

    aput-boolean v2, p3, v3

    goto :goto_0

    .line 349
    .end local v0    # "expr":Ljava/lang/String;
    :cond_2
    move-object v0, p1

    .restart local v0    # "expr":Ljava/lang/String;
    goto :goto_0
.end method
