.class public final Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;
.super Ljava/lang/Object;
.source "BrowserViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duckduckgo/app/browser/BrowserViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewState"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u001c\u0008\u0086\u0008\u0018\u00002\u00020\u0001BY\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010 \u001a\u0004\u0018\u00010\u000cH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0012J\t\u0010!\u001a\u00020\u0003H\u00c6\u0003Jb\u0010\"\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010#J\u0013\u0010$\u001a\u00020\u00032\u0008\u0010%\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010&\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\'\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0010R\u0015\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\n\n\u0002\u0010\u0013\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0010R\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0010R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006("
    }
    d2 = {
        "Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;",
        "",
        "isLoading",
        "",
        "progress",
        "",
        "url",
        "",
        "isEditing",
        "browserShowing",
        "showClearButton",
        "privacyGrade",
        "",
        "showPrivacyGrade",
        "(ZILjava/lang/String;ZZZLjava/lang/Long;Z)V",
        "getBrowserShowing",
        "()Z",
        "getPrivacyGrade",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getProgress",
        "()I",
        "getShowClearButton",
        "getShowPrivacyGrade",
        "getUrl",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "(ZILjava/lang/String;ZZZLjava/lang/Long;Z)Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;",
        "equals",
        "other",
        "hashCode",
        "toString",
        "duckduckgo-0.6.0_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field private final browserShowing:Z

.field private final isEditing:Z

.field private final isLoading:Z

.field private final privacyGrade:Ljava/lang/Long;

.field private final progress:I

.field private final showClearButton:Z

.field private final showPrivacyGrade:Z

.field private final url:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3688ca56f4a843ceL    # 5.427927267211303E-46

    const/16 v2, 0x53

    const-string v3, "com/duckduckgo/app/browser/BrowserViewModel$ViewState"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 12

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xff

    const/4 v11, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;-><init>(ZILjava/lang/String;ZZZLjava/lang/Long;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v1, 0x1b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;ZZZLjava/lang/Long;Z)V
    .locals 3
    .param p1, "isLoading"    # Z
    .param p2, "progress"    # I
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "isEditing"    # Z
    .param p5, "browserShowing"    # Z
    .param p6, "showClearButton"    # Z
    .param p7, "privacyGrade"    # Ljava/lang/Long;
    .param p8, "showPrivacyGrade"    # Z

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->isLoading:Z

    iput p2, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->progress:I

    iput-object p3, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->url:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->isEditing:Z

    iput-boolean p5, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->browserShowing:Z

    iput-boolean p6, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->showClearButton:Z

    iput-object p7, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->privacyGrade:Ljava/lang/Long;

    iput-boolean p8, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->showPrivacyGrade:Z

    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public synthetic constructor <init>(ZILjava/lang/String;ZZZLjava/lang/Long;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p9

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v1

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    const/16 v2, 0x9

    aput-boolean v4, v1, v2

    move v2, p1

    goto :goto_0

    .line 42
    :cond_0
    const/16 v2, 0xa

    aput-boolean v4, v1, v2

    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v5, v0, 0x2

    if-nez v5, :cond_1

    const/16 v5, 0xb

    aput-boolean v4, v1, v5

    move v5, p2

    goto :goto_1

    .line 43
    :cond_1
    const/16 v5, 0xc

    aput-boolean v4, v1, v5

    const/4 v5, 0x0

    :goto_1
    and-int/lit8 v6, v0, 0x4

    const/4 v7, 0x0

    if-nez v6, :cond_2

    const/16 v6, 0xd

    aput-boolean v4, v1, v6

    move-object v6, p3

    goto :goto_2

    .line 44
    :cond_2
    move-object v6, v7

    check-cast v6, Ljava/lang/String;

    const/16 v8, 0xe

    aput-boolean v4, v1, v8

    :goto_2
    and-int/lit8 v8, v0, 0x8

    if-nez v8, :cond_3

    const/16 v8, 0xf

    aput-boolean v4, v1, v8

    move/from16 v8, p4

    goto :goto_3

    .line 45
    :cond_3
    const/16 v8, 0x10

    aput-boolean v4, v1, v8

    const/4 v8, 0x0

    :goto_3
    and-int/lit8 v9, v0, 0x10

    if-nez v9, :cond_4

    const/16 v9, 0x11

    aput-boolean v4, v1, v9

    move/from16 v9, p5

    goto :goto_4

    .line 46
    :cond_4
    const/16 v9, 0x12

    aput-boolean v4, v1, v9

    const/4 v9, 0x0

    :goto_4
    and-int/lit8 v10, v0, 0x20

    if-nez v10, :cond_5

    const/16 v10, 0x13

    aput-boolean v4, v1, v10

    move/from16 v10, p6

    goto :goto_5

    .line 47
    :cond_5
    const/16 v10, 0x14

    aput-boolean v4, v1, v10

    const/4 v10, 0x0

    :goto_5
    and-int/lit8 v11, v0, 0x40

    if-nez v11, :cond_6

    const/16 v7, 0x15

    aput-boolean v4, v1, v7

    move-object/from16 v7, p7

    goto :goto_6

    .line 48
    :cond_6
    check-cast v7, Ljava/lang/Long;

    const/16 v11, 0x16

    aput-boolean v4, v1, v11

    :goto_6
    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_7

    const/16 v0, 0x17

    aput-boolean v4, v1, v0

    move/from16 v3, p8

    goto :goto_7

    :cond_7
    const/16 v0, 0x18

    aput-boolean v4, v1, v0

    .line 49
    const/16 v0, 0x19

    aput-boolean v4, v1, v0

    :goto_7
    move-object p1, p0

    move p2, v2

    move p3, v5

    move-object/from16 p4, v6

    move/from16 p5, v8

    move/from16 p6, v9

    move/from16 p7, v10

    move-object/from16 p8, v7

    move/from16 p9, v3

    invoke-direct/range {p1 .. p9}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;-><init>(ZILjava/lang/String;ZZZLjava/lang/Long;Z)V

    const/16 v0, 0x1a

    aput-boolean v4, v1, v0

    return-void
.end method

.method public static synthetic copy$default(Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;ZILjava/lang/String;ZZZLjava/lang/Long;ZILjava/lang/Object;)Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;
    .locals 12

    move-object v0, p0

    move/from16 v1, p9

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v2

    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-nez v3, :cond_0

    const/16 v3, 0x25

    aput-boolean v4, v2, v3

    move v3, p1

    goto :goto_0

    :cond_0
    iget-boolean v3, v0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->isLoading:Z

    const/16 v5, 0x26

    aput-boolean v4, v2, v5

    :goto_0
    and-int/lit8 v5, v1, 0x2

    if-nez v5, :cond_1

    const/16 v5, 0x27

    aput-boolean v4, v2, v5

    move v5, p2

    goto :goto_1

    :cond_1
    iget v5, v0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->progress:I

    const/16 v6, 0x28

    aput-boolean v4, v2, v6

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-nez v6, :cond_2

    const/16 v6, 0x29

    aput-boolean v4, v2, v6

    move-object v6, p3

    goto :goto_2

    :cond_2
    iget-object v6, v0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->url:Ljava/lang/String;

    const/16 v7, 0x2a

    aput-boolean v4, v2, v7

    :goto_2
    and-int/lit8 v7, v1, 0x8

    if-nez v7, :cond_3

    const/16 v7, 0x2b

    aput-boolean v4, v2, v7

    move/from16 v7, p4

    goto :goto_3

    :cond_3
    iget-boolean v7, v0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->isEditing:Z

    const/16 v8, 0x2c

    aput-boolean v4, v2, v8

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-nez v8, :cond_4

    const/16 v8, 0x2d

    aput-boolean v4, v2, v8

    move/from16 v8, p5

    goto :goto_4

    :cond_4
    iget-boolean v8, v0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->browserShowing:Z

    const/16 v9, 0x2e

    aput-boolean v4, v2, v9

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-nez v9, :cond_5

    const/16 v9, 0x2f

    aput-boolean v4, v2, v9

    move/from16 v9, p6

    goto :goto_5

    :cond_5
    iget-boolean v9, v0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->showClearButton:Z

    const/16 v10, 0x30

    aput-boolean v4, v2, v10

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-nez v10, :cond_6

    const/16 v10, 0x31

    aput-boolean v4, v2, v10

    move-object/from16 v10, p7

    goto :goto_6

    :cond_6
    iget-object v10, v0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->privacyGrade:Ljava/lang/Long;

    const/16 v11, 0x32

    aput-boolean v4, v2, v11

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_7

    const/16 v1, 0x33

    aput-boolean v4, v2, v1

    move/from16 v1, p8

    goto :goto_7

    :cond_7
    iget-boolean v1, v0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->showPrivacyGrade:Z

    const/16 v11, 0x34

    aput-boolean v4, v2, v11

    :goto_7
    move p1, v3

    move p2, v5

    move-object p3, v6

    move/from16 p4, v7

    move/from16 p5, v8

    move/from16 p6, v9

    move-object/from16 p7, v10

    move/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->copy(ZILjava/lang/String;ZZZLjava/lang/Long;Z)Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;

    move-result-object v0

    const/16 v1, 0x35

    aput-boolean v4, v2, v1

    return-object v0
.end method


# virtual methods
.method public final component1()Z
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    iget-boolean v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->isLoading:Z

    const/16 v2, 0x1c

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public final component2()I
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    iget v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->progress:I

    const/16 v2, 0x1d

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public final component3()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->url:Ljava/lang/String;

    const/16 v2, 0x1e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final component4()Z
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    iget-boolean v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->isEditing:Z

    const/16 v2, 0x1f

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public final component5()Z
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    iget-boolean v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->browserShowing:Z

    const/16 v2, 0x20

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public final component6()Z
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    iget-boolean v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->showClearButton:Z

    const/16 v2, 0x21

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public final component7()Ljava/lang/Long;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->privacyGrade:Ljava/lang/Long;

    const/16 v2, 0x22

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final component8()Z
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    iget-boolean v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->showPrivacyGrade:Z

    const/16 v2, 0x23

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public final copy(ZILjava/lang/String;ZZZLjava/lang/Long;Z)Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;
    .locals 11

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    new-instance v10, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;

    move-object v1, v10

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;-><init>(ZILjava/lang/String;ZZZLjava/lang/Long;Z)V

    const/16 v1, 0x24

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object v10
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_0

    const/16 p1, 0x46

    aput-boolean v1, v0, p1

    goto/16 :goto_1

    :cond_0
    instance-of v2, p1, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;

    if-nez v2, :cond_1

    const/16 p1, 0x47

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;

    iget-boolean v2, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->isLoading:Z

    iget-boolean v3, p1, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->isLoading:Z

    if-eq v2, v3, :cond_2

    const/16 p1, 0x48

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->progress:I

    iget v3, p1, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->progress:I

    if-eq v2, v3, :cond_3

    const/16 p1, 0x49

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 p1, 0x4a

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->isEditing:Z

    iget-boolean v3, p1, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->isEditing:Z

    if-eq v2, v3, :cond_5

    const/16 p1, 0x4b

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->browserShowing:Z

    iget-boolean v3, p1, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->browserShowing:Z

    if-eq v2, v3, :cond_6

    const/16 p1, 0x4c

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_6
    iget-boolean v2, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->showClearButton:Z

    iget-boolean v3, p1, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->showClearButton:Z

    if-eq v2, v3, :cond_7

    const/16 p1, 0x4d

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->privacyGrade:Ljava/lang/Long;

    iget-object v3, p1, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->privacyGrade:Ljava/lang/Long;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const/16 p1, 0x4e

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_8
    iget-boolean v2, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->showPrivacyGrade:Z

    iget-boolean p1, p1, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->showPrivacyGrade:Z

    if-eq v2, p1, :cond_9

    const/16 p1, 0x4f

    aput-boolean v1, v0, p1

    :goto_0
    const/4 p1, 0x0

    const/16 v2, 0x52

    aput-boolean v1, v0, v2

    return p1

    :cond_9
    const/16 p1, 0x50

    aput-boolean v1, v0, p1

    :goto_1
    const/16 p1, 0x51

    aput-boolean v1, v0, p1

    return v1
.end method

.method public final getBrowserShowing()Z
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    iget-boolean v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->browserShowing:Z

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public final getPrivacyGrade()Ljava/lang/Long;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->privacyGrade:Ljava/lang/Long;

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final getProgress()I
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    iget v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->progress:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v2

    return v1
.end method

.method public final getShowClearButton()Z
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    .line 47
    iget-boolean v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->showClearButton:Z

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public final getShowPrivacyGrade()Z
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    iget-boolean v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->showPrivacyGrade:Z

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->url:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public hashCode()I
    .locals 6

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    iget-boolean v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->isLoading:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/16 v3, 0x37

    aput-boolean v2, v0, v3

    goto :goto_0

    :cond_0
    const/16 v1, 0x38

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget v3, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->progress:I

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    iget-object v3, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->url:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const/16 v5, 0x39

    aput-boolean v2, v0, v5

    goto :goto_1

    :cond_1
    const/16 v3, 0x3a

    aput-boolean v2, v0, v3

    const/4 v3, 0x0

    :goto_1
    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v3, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->isEditing:Z

    if-nez v3, :cond_2

    const/16 v5, 0x3b

    aput-boolean v2, v0, v5

    goto :goto_2

    :cond_2
    const/16 v3, 0x3c

    aput-boolean v2, v0, v3

    const/4 v3, 0x1

    :goto_2
    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v3, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->browserShowing:Z

    if-nez v3, :cond_3

    const/16 v5, 0x3d

    aput-boolean v2, v0, v5

    goto :goto_3

    :cond_3
    const/16 v3, 0x3e

    aput-boolean v2, v0, v3

    const/4 v3, 0x1

    :goto_3
    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v3, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->showClearButton:Z

    if-nez v3, :cond_4

    const/16 v5, 0x3f

    aput-boolean v2, v0, v5

    goto :goto_4

    :cond_4
    const/16 v3, 0x40

    aput-boolean v2, v0, v3

    const/4 v3, 0x1

    :goto_4
    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    iget-object v3, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->privacyGrade:Ljava/lang/Long;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const/16 v3, 0x41

    aput-boolean v2, v0, v3

    goto :goto_5

    :cond_5
    const/16 v3, 0x42

    aput-boolean v2, v0, v3

    :goto_5
    add-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v3, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->showPrivacyGrade:Z

    if-nez v3, :cond_6

    const/16 v4, 0x43

    aput-boolean v2, v0, v4

    goto :goto_6

    :cond_6
    const/16 v3, 0x44

    aput-boolean v2, v0, v3

    const/4 v3, 0x1

    :goto_6
    add-int/2addr v1, v3

    const/16 v3, 0x45

    aput-boolean v2, v0, v3

    return v1
.end method

.method public final isEditing()Z
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    iget-boolean v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->isEditing:Z

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public final isLoading()Z
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    .line 42
    iget-boolean v1, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->isLoading:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewState(isLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->isLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->progress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isEditing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->isEditing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", browserShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->browserShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", showClearButton="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->showClearButton:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", privacyGrade="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->privacyGrade:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", showPrivacyGrade="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;->showPrivacyGrade:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x36

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
