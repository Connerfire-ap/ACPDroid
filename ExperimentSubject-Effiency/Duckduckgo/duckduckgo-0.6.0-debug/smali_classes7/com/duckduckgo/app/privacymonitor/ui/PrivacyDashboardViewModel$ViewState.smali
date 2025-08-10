.class public final Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;
.super Ljava/lang/Object;
.source "PrivacyDashboardViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\"\u0008\u0086\u0008\u0018\u00002\u00020\u0001Bo\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011J\t\u0010!\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0003H\u00c6\u0003J\t\u0010#\u001a\u00020\u0005H\u00c6\u0003J\t\u0010$\u001a\u00020\u0010H\u00c6\u0003J\t\u0010%\u001a\u00020\u0005H\u00c6\u0003J\t\u0010&\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0003H\u00c6\u0003J\t\u0010(\u001a\u00020\u0005H\u00c6\u0003J\t\u0010)\u001a\u00020\u0005H\u00c6\u0003J\t\u0010*\u001a\u00020\u0003H\u00c6\u0003J\t\u0010+\u001a\u00020\u0005H\u00c6\u0003J\t\u0010,\u001a\u00020\u0003H\u00c6\u0003J\u0081\u0001\u0010-\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0003\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u00052\u0008\u0008\u0003\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0003\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0003\u0010\r\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010H\u00c6\u0001J\u0013\u0010.\u001a\u00020\u00102\u0008\u0010/\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00100\u001a\u00020\u0003H\u00d6\u0001J\t\u00101\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013R\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0016R\u0011\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0013R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0016R\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0016R\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0016R\u0011\u0010\u000e\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0013R\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 \u00a8\u00062"
    }
    d2 = {
        "Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;",
        "",
        "privacyBanner",
        "",
        "domain",
        "",
        "heading",
        "httpsIcon",
        "httpsText",
        "networksText",
        "networksIcon",
        "majorNetworksText",
        "majorNetworksIcon",
        "termsIcon",
        "termsText",
        "toggleEnabled",
        "",
        "(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Z)V",
        "getDomain",
        "()Ljava/lang/String;",
        "getHeading",
        "getHttpsIcon",
        "()I",
        "getHttpsText",
        "getMajorNetworksIcon",
        "getMajorNetworksText",
        "getNetworksIcon",
        "getNetworksText",
        "getPrivacyBanner",
        "getTermsIcon",
        "getTermsText",
        "getToggleEnabled",
        "()Z",
        "component1",
        "component10",
        "component11",
        "component12",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
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
.field private final domain:Ljava/lang/String;

.field private final heading:Ljava/lang/String;

.field private final httpsIcon:I

.field private final httpsText:Ljava/lang/String;

.field private final majorNetworksIcon:I

.field private final majorNetworksText:Ljava/lang/String;

.field private final networksIcon:I

.field private final networksText:Ljava/lang/String;

.field private final privacyBanner:I

.field private final termsIcon:I

.field private final termsText:Ljava/lang/String;

.field private final toggleEnabled:Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7369e14b1acbe3edL    # 9.047562621769524E247

    const/16 v2, 0x55

    const-string v3, "com/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Z)V
    .locals 3
    .param p1, "privacyBanner"    # I
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "heading"    # Ljava/lang/String;
    .param p4, "httpsIcon"    # I
    .param p5, "httpsText"    # Ljava/lang/String;
    .param p6, "networksText"    # Ljava/lang/String;
    .param p7, "networksIcon"    # I
    .param p8, "majorNetworksText"    # Ljava/lang/String;
    .param p9, "majorNetworksIcon"    # I
    .param p10, "termsIcon"    # I
    .param p11, "termsText"    # Ljava/lang/String;
    .param p12, "toggleEnabled"    # Z

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "domain"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "heading"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "httpsText"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "networksText"

    invoke-static {p6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "majorNetworksText"

    invoke-static {p8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "termsText"

    invoke-static {p11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->privacyBanner:I

    iput-object p2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->domain:Ljava/lang/String;

    iput-object p3, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->heading:Ljava/lang/String;

    iput p4, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->httpsIcon:I

    iput-object p5, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->httpsText:Ljava/lang/String;

    iput-object p6, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->networksText:Ljava/lang/String;

    iput p7, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->networksIcon:I

    iput-object p8, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->majorNetworksText:Ljava/lang/String;

    iput p9, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->majorNetworksIcon:I

    iput p10, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->termsIcon:I

    iput-object p11, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->termsText:Ljava/lang/String;

    iput-boolean p12, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->toggleEnabled:Z

    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static synthetic copy$default(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;ZILjava/lang/Object;)Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p13

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v2

    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-nez v3, :cond_0

    const/16 v3, 0x1b

    aput-boolean v4, v2, v3

    move/from16 v3, p1

    goto :goto_0

    :cond_0
    iget v3, v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->privacyBanner:I

    const/16 v5, 0x1c

    aput-boolean v4, v2, v5

    :goto_0
    and-int/lit8 v5, v1, 0x2

    if-nez v5, :cond_1

    const/16 v5, 0x1d

    aput-boolean v4, v2, v5

    move-object/from16 v5, p2

    goto :goto_1

    :cond_1
    iget-object v5, v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->domain:Ljava/lang/String;

    const/16 v6, 0x1e

    aput-boolean v4, v2, v6

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-nez v6, :cond_2

    const/16 v6, 0x1f

    aput-boolean v4, v2, v6

    move-object/from16 v6, p3

    goto :goto_2

    :cond_2
    iget-object v6, v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->heading:Ljava/lang/String;

    const/16 v7, 0x20

    aput-boolean v4, v2, v7

    :goto_2
    and-int/lit8 v7, v1, 0x8

    if-nez v7, :cond_3

    const/16 v7, 0x21

    aput-boolean v4, v2, v7

    move/from16 v7, p4

    goto :goto_3

    :cond_3
    iget v7, v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->httpsIcon:I

    const/16 v8, 0x22

    aput-boolean v4, v2, v8

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-nez v8, :cond_4

    const/16 v8, 0x23

    aput-boolean v4, v2, v8

    move-object/from16 v8, p5

    goto :goto_4

    :cond_4
    iget-object v8, v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->httpsText:Ljava/lang/String;

    const/16 v9, 0x24

    aput-boolean v4, v2, v9

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-nez v9, :cond_5

    const/16 v9, 0x25

    aput-boolean v4, v2, v9

    move-object/from16 v9, p6

    goto :goto_5

    :cond_5
    iget-object v9, v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->networksText:Ljava/lang/String;

    const/16 v10, 0x26

    aput-boolean v4, v2, v10

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-nez v10, :cond_6

    const/16 v10, 0x27

    aput-boolean v4, v2, v10

    move/from16 v10, p7

    goto :goto_6

    :cond_6
    iget v10, v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->networksIcon:I

    const/16 v11, 0x28

    aput-boolean v4, v2, v11

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-nez v11, :cond_7

    const/16 v11, 0x29

    aput-boolean v4, v2, v11

    move-object/from16 v11, p8

    goto :goto_7

    :cond_7
    iget-object v11, v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->majorNetworksText:Ljava/lang/String;

    const/16 v12, 0x2a

    aput-boolean v4, v2, v12

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-nez v12, :cond_8

    const/16 v12, 0x2b

    aput-boolean v4, v2, v12

    move/from16 v12, p9

    goto :goto_8

    :cond_8
    iget v12, v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->majorNetworksIcon:I

    const/16 v13, 0x2c

    aput-boolean v4, v2, v13

    :goto_8
    and-int/lit16 v13, v1, 0x200

    if-nez v13, :cond_9

    const/16 v13, 0x2d

    aput-boolean v4, v2, v13

    move/from16 v13, p10

    goto :goto_9

    :cond_9
    iget v13, v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->termsIcon:I

    const/16 v14, 0x2e

    aput-boolean v4, v2, v14

    :goto_9
    and-int/lit16 v14, v1, 0x400

    if-nez v14, :cond_a

    const/16 v14, 0x2f

    aput-boolean v4, v2, v14

    move-object/from16 v14, p11

    goto :goto_a

    :cond_a
    iget-object v14, v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->termsText:Ljava/lang/String;

    const/16 v15, 0x30

    aput-boolean v4, v2, v15

    :goto_a
    and-int/lit16 v1, v1, 0x800

    if-nez v1, :cond_b

    const/16 v1, 0x31

    aput-boolean v4, v2, v1

    move/from16 v1, p12

    goto :goto_b

    :cond_b
    iget-boolean v1, v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->toggleEnabled:Z

    const/16 v15, 0x32

    aput-boolean v4, v2, v15

    :goto_b
    move/from16 p1, v3

    move-object/from16 p2, v5

    move-object/from16 p3, v6

    move/from16 p4, v7

    move-object/from16 p5, v8

    move-object/from16 p6, v9

    move/from16 p7, v10

    move-object/from16 p8, v11

    move/from16 p9, v12

    move/from16 p10, v13

    move-object/from16 p11, v14

    move/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->copy(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Z)Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;

    move-result-object v0

    const/16 v1, 0x33

    aput-boolean v4, v2, v1

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    iget v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->privacyBanner:I

    const/16 v2, 0xe

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public final component10()I
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    iget v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->termsIcon:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public final component11()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->termsText:Ljava/lang/String;

    const/16 v2, 0x18

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final component12()Z
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    iget-boolean v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->toggleEnabled:Z

    const/16 v2, 0x19

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public final component2()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->domain:Ljava/lang/String;

    const/16 v2, 0xf

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final component3()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->heading:Ljava/lang/String;

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final component4()I
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    iget v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->httpsIcon:I

    const/16 v2, 0x11

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public final component5()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->httpsText:Ljava/lang/String;

    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final component6()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->networksText:Ljava/lang/String;

    const/16 v2, 0x13

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final component7()I
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    iget v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->networksIcon:I

    const/16 v2, 0x14

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public final component8()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->majorNetworksText:Ljava/lang/String;

    const/16 v2, 0x15

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final component9()I
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    iget v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->majorNetworksIcon:I

    const/16 v2, 0x16

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Z)Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;
    .locals 16

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "domain"

    move-object/from16 v15, p2

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "heading"

    move-object/from16 v14, p3

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "httpsText"

    move-object/from16 v13, p5

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "networksText"

    move-object/from16 v12, p6

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "majorNetworksText"

    move-object/from16 v11, p8

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "termsText"

    move-object/from16 v10, p11

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;

    move-object v2, v1

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    invoke-direct/range {v2 .. v14}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Z)V

    const/16 v2, 0x1a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_0

    const/16 p1, 0x44

    aput-boolean v1, v0, p1

    goto/16 :goto_1

    :cond_0
    instance-of v2, p1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;

    if-nez v2, :cond_1

    const/16 p1, 0x45

    aput-boolean v1, v0, p1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;

    iget v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->privacyBanner:I

    iget v3, p1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->privacyBanner:I

    if-eq v2, v3, :cond_2

    const/16 p1, 0x46

    aput-boolean v1, v0, p1

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->domain:Ljava/lang/String;

    iget-object v3, p1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->domain:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 p1, 0x47

    aput-boolean v1, v0, p1

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->heading:Ljava/lang/String;

    iget-object v3, p1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->heading:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 p1, 0x48

    aput-boolean v1, v0, p1

    goto/16 :goto_0

    :cond_4
    iget v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->httpsIcon:I

    iget v3, p1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->httpsIcon:I

    if-eq v2, v3, :cond_5

    const/16 p1, 0x49

    aput-boolean v1, v0, p1

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->httpsText:Ljava/lang/String;

    iget-object v3, p1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->httpsText:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const/16 p1, 0x4a

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->networksText:Ljava/lang/String;

    iget-object v3, p1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->networksText:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const/16 p1, 0x4b

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->networksIcon:I

    iget v3, p1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->networksIcon:I

    if-eq v2, v3, :cond_8

    const/16 p1, 0x4c

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->majorNetworksText:Ljava/lang/String;

    iget-object v3, p1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->majorNetworksText:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const/16 p1, 0x4d

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_9
    iget v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->majorNetworksIcon:I

    iget v3, p1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->majorNetworksIcon:I

    if-eq v2, v3, :cond_a

    const/16 p1, 0x4e

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_a
    iget v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->termsIcon:I

    iget v3, p1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->termsIcon:I

    if-eq v2, v3, :cond_b

    const/16 p1, 0x4f

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->termsText:Ljava/lang/String;

    iget-object v3, p1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->termsText:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const/16 p1, 0x50

    aput-boolean v1, v0, p1

    goto :goto_0

    :cond_c
    iget-boolean v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->toggleEnabled:Z

    iget-boolean p1, p1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->toggleEnabled:Z

    if-eq v2, p1, :cond_d

    const/16 p1, 0x51

    aput-boolean v1, v0, p1

    :goto_0
    const/4 p1, 0x0

    const/16 v2, 0x54

    aput-boolean v1, v0, v2

    return p1

    :cond_d
    const/16 p1, 0x52

    aput-boolean v1, v0, p1

    :goto_1
    const/16 p1, 0x53

    aput-boolean v1, v0, p1

    return v1
.end method

.method public final getDomain()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->domain:Ljava/lang/String;

    const/4 v2, 0x1

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public final getHeading()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->heading:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final getHttpsIcon()I
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    iget v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->httpsIcon:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public final getHttpsText()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->httpsText:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final getMajorNetworksIcon()I
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    iget v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->majorNetworksIcon:I

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public final getMajorNetworksText()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->majorNetworksText:Ljava/lang/String;

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final getNetworksIcon()I
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    iget v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->networksIcon:I

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public final getNetworksText()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->networksText:Ljava/lang/String;

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final getPrivacyBanner()I
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    iget v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->privacyBanner:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public final getTermsIcon()I
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    .line 47
    iget v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->termsIcon:I

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public final getTermsText()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->termsText:Ljava/lang/String;

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final getToggleEnabled()Z
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    iget-boolean v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->toggleEnabled:Z

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public hashCode()I
    .locals 6

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    iget v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->privacyBanner:I

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->domain:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/16 v5, 0x35

    aput-boolean v4, v0, v5

    goto :goto_0

    :cond_0
    const/16 v2, 0x36

    aput-boolean v4, v0, v2

    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->heading:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/16 v5, 0x37

    aput-boolean v4, v0, v5

    goto :goto_1

    :cond_1
    const/16 v2, 0x38

    aput-boolean v4, v0, v2

    const/4 v2, 0x0

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->httpsIcon:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->httpsText:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/16 v5, 0x39

    aput-boolean v4, v0, v5

    goto :goto_2

    :cond_2
    const/16 v2, 0x3a

    aput-boolean v4, v0, v2

    const/4 v2, 0x0

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->networksText:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/16 v5, 0x3b

    aput-boolean v4, v0, v5

    goto :goto_3

    :cond_3
    const/16 v2, 0x3c

    aput-boolean v4, v0, v2

    const/4 v2, 0x0

    :goto_3
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->networksIcon:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->majorNetworksText:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/16 v5, 0x3d

    aput-boolean v4, v0, v5

    goto :goto_4

    :cond_4
    const/16 v2, 0x3e

    aput-boolean v4, v0, v2

    const/4 v2, 0x0

    :goto_4
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->majorNetworksIcon:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->termsIcon:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->termsText:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const/16 v2, 0x3f

    aput-boolean v4, v0, v2

    goto :goto_5

    :cond_5
    const/16 v2, 0x40

    aput-boolean v4, v0, v2

    :goto_5
    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->toggleEnabled:Z

    if-nez v2, :cond_6

    const/16 v3, 0x41

    aput-boolean v4, v0, v3

    goto :goto_6

    :cond_6
    const/16 v2, 0x42

    aput-boolean v4, v0, v2

    const/4 v2, 0x1

    :goto_6
    add-int/2addr v1, v2

    const/16 v2, 0x43

    aput-boolean v4, v0, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->$jacocoInit()[Z

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewState(privacyBanner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->privacyBanner:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", domain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", heading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->heading:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", httpsIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->httpsIcon:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", httpsText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->httpsText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", networksText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->networksText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", networksIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->networksIcon:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", majorNetworksText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->majorNetworksText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", majorNetworksIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->majorNetworksIcon:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", termsIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->termsIcon:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", termsText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->termsText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", toggleEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->toggleEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x34

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
