.class public final Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;
.super Landroid/arch/lifecycle/ViewModel;
.source "PrivacyDashboardViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u0001:\u00012B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0003J\u0010\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u001c\u0010\u001a\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0016H\u0003J\u001c\u0010\u001d\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u001b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0016H\u0002J\u001c\u0010\u001f\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001b\u001a\u00020\n2\u0008\u0008\u0002\u0010 \u001a\u00020\u0016H\u0003J\u001c\u0010!\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u001b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0016H\u0002J\u0010\u0010\"\u001a\u00020#2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u000e\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020\nJ\u0017\u0010&\u001a\u00020\u00162\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0002\u00a2\u0006\u0002\u0010)J\u0017\u0010*\u001a\u00020\u00162\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0003\u00a2\u0006\u0002\u0010)J\u0017\u0010+\u001a\u00020\u00162\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0003\u00a2\u0006\u0002\u0010)J\u0017\u0010,\u001a\u00020\u00162\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0003\u00a2\u0006\u0002\u0010)J\u0008\u0010-\u001a\u00020#H\u0002J\u0010\u0010.\u001a\u00020\u00162\u0006\u0010/\u001a\u00020(H\u0003J\u0010\u00100\u001a\u00020\u00142\u0006\u0010/\u001a\u00020(H\u0002J\u0010\u00101\u001a\u00020#2\u0006\u0010\u0007\u001a\u00020\u0008H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u00063"
    }
    d2 = {
        "Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;",
        "Landroid/arch/lifecycle/ViewModel;",
        "context",
        "Landroid/content/Context;",
        "settingsStore",
        "Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;",
        "(Landroid/content/Context;Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;)V",
        "monitor",
        "Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;",
        "privacyInitiallyOn",
        "",
        "shouldReloadPage",
        "getShouldReloadPage",
        "()Z",
        "viewState",
        "Landroid/arch/lifecycle/MutableLiveData;",
        "Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;",
        "getViewState",
        "()Landroid/arch/lifecycle/MutableLiveData;",
        "headingText",
        "",
        "httpsIcon",
        "",
        "status",
        "Lcom/duckduckgo/app/privacymonitor/HttpsStatus;",
        "httpsText",
        "majorNetworksIcon",
        "allBlocked",
        "majorNetworksCount",
        "majorNetworksText",
        "networkCount",
        "networksIcon",
        "networksCount",
        "networksText",
        "onPrivacyMonitorChanged",
        "",
        "onPrivacyToggled",
        "enabled",
        "privacyBanner",
        "grade",
        "",
        "(Ljava/lang/Long;)I",
        "privacyBannerOff",
        "privacyBannerOn",
        "privacyGradeIcon",
        "resetViewState",
        "termsIcon",
        "practices",
        "termsText",
        "updatePrivacyMonitor",
        "ViewState",
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
.field private final context:Landroid/content/Context;

.field private monitor:Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;

.field private final privacyInitiallyOn:Z

.field private final settingsStore:Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;

.field private final viewState:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6bc51d3fad9f14d5L

    const/16 v2, 0xb0

    const-string v3, "com/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingsStore"    # Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "settingsStore"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const/16 v1, 0xab

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 35
    invoke-direct {p0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->settingsStore:Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;

    const/16 v1, 0xac

    aput-boolean v2, v0, v1

    .line 52
    new-instance v1, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->viewState:Landroid/arch/lifecycle/MutableLiveData;

    const/16 v1, 0xad

    aput-boolean v2, v0, v1

    .line 53
    invoke-interface {p2}, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;->getPrivacyOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->privacyInitiallyOn:Z

    .line 56
    const/16 v1, 0xae

    aput-boolean v2, v0, v1

    .line 57
    invoke-direct {p0}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->resetViewState()V

    .line 58
    const/16 v1, 0xaf

    aput-boolean v2, v0, v1

    return-void
.end method

.method private final headingText()Ljava/lang/String;
    .locals 12

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->$jacocoInit()[Z

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->monitor:Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;

    .line 119
    .local v1, "monitor":Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;
    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/16 v3, 0x32

    aput-boolean v2, v0, v3

    goto :goto_0

    :cond_0
    const/16 v3, 0x33

    aput-boolean v2, v0, v3

    .line 120
    invoke-static {v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->getGrade(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)J

    move-result-wide v3

    .local v3, "before":J
    const/16 v5, 0x34

    aput-boolean v2, v0, v5

    .line 121
    invoke-static {v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->getImprovedGrade(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)J

    move-result-wide v5

    .line 122
    .local v5, "after":J
    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    const/16 v7, 0x35

    aput-boolean v2, v0, v7

    .line 126
    .end local v3    # "before":J
    .end local v5    # "after":J
    :goto_0
    iget-object v3, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->settingsStore:Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;

    invoke-interface {v3}, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;->getPrivacyOn()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0e003b

    const/16 v4, 0x38

    aput-boolean v2, v0, v4

    goto :goto_1

    :cond_1
    const v3, 0x7f0e003a

    const/16 v4, 0x39

    aput-boolean v2, v0, v4

    :goto_1
    const/16 v4, 0x3a

    aput-boolean v2, v0, v4

    .line 127
    .local v3, "resource":I
    iget-object v4, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "context.getString(resource)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x3b

    aput-boolean v2, v0, v5

    return-object v4

    .line 122
    .local v3, "before":J
    .restart local v5    # "after":J
    :cond_2
    const/16 v7, 0x36

    aput-boolean v2, v0, v7

    .line 123
    iget-object v7, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->context:Landroid/content/Context;

    const v8, 0x7f0e003d

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->privacyGradeIcon(Ljava/lang/Long;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->privacyGradeIcon(Ljava/lang/Long;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "context.getString(R.stri\u2026 privacyGradeIcon(after))"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x37

    aput-boolean v2, v0, v8

    return-object v7
.end method

.method private final httpsIcon(Lcom/duckduckgo/app/privacymonitor/HttpsStatus;)I
    .locals 4
    .param p1, "status"    # Lcom/duckduckgo/app/privacymonitor/HttpsStatus;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->$jacocoInit()[Z

    move-result-object v0

    .line 170
    sget-object v1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/duckduckgo/app/privacymonitor/HttpsStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 173
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    const/16 v3, 0x6c

    aput-boolean v2, v0, v3

    throw v1

    :pswitch_0
    const v1, 0x7f07005c

    const/16 v3, 0x6b

    aput-boolean v2, v0, v3

    goto :goto_0

    .line 172
    :pswitch_1
    const v1, 0x7f07005d

    const/16 v3, 0x6a

    aput-boolean v2, v0, v3

    goto :goto_0

    .line 171
    :pswitch_2
    const v1, 0x7f07005b

    const/16 v3, 0x69

    aput-boolean v2, v0, v3

    .line 170
    :goto_0
    nop

    .line 174
    const/16 v3, 0x6d

    aput-boolean v2, v0, v3

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final httpsText(Lcom/duckduckgo/app/privacymonitor/HttpsStatus;)Ljava/lang/String;
    .locals 4
    .param p1, "status"    # Lcom/duckduckgo/app/privacymonitor/HttpsStatus;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->$jacocoInit()[Z

    move-result-object v0

    .line 176
    sget-object v1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/duckduckgo/app/privacymonitor/HttpsStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 179
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    const/16 v3, 0x71

    aput-boolean v2, v0, v3

    throw v1

    :pswitch_0
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->context:Landroid/content/Context;

    const v3, 0x7f0e002b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "context.getString(R.string.httpsGood)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x70

    aput-boolean v2, v0, v3

    goto :goto_0

    .line 178
    :pswitch_1
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->context:Landroid/content/Context;

    const v3, 0x7f0e002c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "context.getString(R.string.httpsMixed)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x6f

    aput-boolean v2, v0, v3

    goto :goto_0

    .line 177
    :pswitch_2
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->context:Landroid/content/Context;

    const v3, 0x7f0e002a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "context.getString(R.string.httpsBad)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x6e

    aput-boolean v2, v0, v3

    .line 176
    :goto_0
    nop

    .line 180
    const/16 v3, 0x72

    aput-boolean v2, v0, v3

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final majorNetworksIcon(ZI)I
    .locals 5
    .param p1, "allBlocked"    # Z
    .param p2, "majorNetworksCount"    # I

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->$jacocoInit()[Z

    move-result-object v0

    .line 195
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/16 v2, 0x8a

    aput-boolean v1, v0, v2

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/16 v2, 0x8b

    aput-boolean v1, v0, v2

    :goto_0
    const/16 v2, 0x8c

    aput-boolean v1, v0, v2

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/16 v3, 0x8d

    aput-boolean v1, v0, v3

    .line 196
    .local v2, "isGood":Z
    :goto_1
    if-eqz v2, :cond_2

    const v3, 0x7f07005f

    const/16 v4, 0x8e

    aput-boolean v1, v0, v4

    goto :goto_2

    :cond_2
    const v3, 0x7f07005e

    const/16 v4, 0x8f

    aput-boolean v1, v0, v4

    :goto_2
    const/16 v4, 0x90

    aput-boolean v1, v0, v4

    return v3
.end method

.method static synthetic majorNetworksIcon$default(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;ZIILjava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->$jacocoInit()[Z

    move-result-object p4

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/16 v0, 0x91

    aput-boolean v1, p4, v0

    goto :goto_0

    :cond_0
    const/16 p1, 0x92

    aput-boolean v1, p4, p1

    .line 194
    const/16 p1, 0x93

    aput-boolean v1, p4, p1

    const/4 p1, 0x1

    :goto_0
    and-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_1

    const/16 p3, 0x94

    aput-boolean v1, p4, p3

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    const/16 p3, 0x95

    aput-boolean v1, p4, p3

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->majorNetworksIcon(ZI)I

    move-result p0

    const/16 p1, 0x96

    aput-boolean v1, p4, p1

    return p0
.end method

.method private final majorNetworksText(ZI)Ljava/lang/String;
    .locals 7
    .param p1, "allBlocked"    # Z
    .param p2, "networkCount"    # I

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->$jacocoInit()[Z

    move-result-object v0

    .line 200
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const v2, 0x7f0e002d

    const/16 v3, 0x97

    aput-boolean v1, v0, v3

    goto :goto_0

    :cond_0
    const v2, 0x7f0e002e

    const/16 v3, 0x98

    aput-boolean v1, v0, v3

    :goto_0
    const/16 v3, 0x99

    aput-boolean v1, v0, v3

    .line 201
    .local v2, "resource":I
    iget-object v3, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->context:Landroid/content/Context;

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context.getString(resour\u2026 networkCount.toString())"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x9a

    aput-boolean v1, v0, v4

    return-object v3
.end method

.method static synthetic majorNetworksText$default(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;ZIILjava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->$jacocoInit()[Z

    move-result-object p4

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/16 v0, 0x9b

    aput-boolean v1, p4, v0

    goto :goto_0

    :cond_0
    const/16 p1, 0x9c

    aput-boolean v1, p4, p1

    .line 199
    const/16 p1, 0x9d

    aput-boolean v1, p4, p1

    const/4 p1, 0x1

    :goto_0
    and-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_1

    const/16 p3, 0x9e

    aput-boolean v1, p4, p3

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    const/16 p3, 0x9f

    aput-boolean v1, p4, p3

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->majorNetworksText(ZI)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xa0

    aput-boolean v1, p4, p1

    return-object p0
.end method

.method private final networksIcon(ZI)I
    .locals 5
    .param p1, "allBlocked"    # Z
    .param p2, "networksCount"    # I

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->$jacocoInit()[Z

    move-result-object v0

    .line 184
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/16 v2, 0x73

    aput-boolean v1, v0, v2

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/16 v2, 0x74

    aput-boolean v1, v0, v2

    :goto_0
    const/16 v2, 0x75

    aput-boolean v1, v0, v2

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/16 v3, 0x76

    aput-boolean v1, v0, v3

    .line 185
    .local v2, "isGood":Z
    :goto_1
    if-eqz v2, :cond_2

    const v3, 0x7f070061

    const/16 v4, 0x77

    aput-boolean v1, v0, v4

    goto :goto_2

    :cond_2
    const v3, 0x7f070060

    const/16 v4, 0x78

    aput-boolean v1, v0, v4

    :goto_2
    const/16 v4, 0x79

    aput-boolean v1, v0, v4

    return v3
.end method

.method static synthetic networksIcon$default(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;ZIILjava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->$jacocoInit()[Z

    move-result-object p4

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/16 v0, 0x7a

    aput-boolean v1, p4, v0

    goto :goto_0

    :cond_0
    const/16 p1, 0x7b

    aput-boolean v1, p4, p1

    .line 183
    const/16 p1, 0x7c

    aput-boolean v1, p4, p1

    const/4 p1, 0x1

    :goto_0
    and-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_1

    const/16 p3, 0x7d

    aput-boolean v1, p4, p3

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    const/16 p3, 0x7e

    aput-boolean v1, p4, p3

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->networksIcon(ZI)I

    move-result p0

    const/16 p1, 0x7f

    aput-boolean v1, p4, p1

    return p0
.end method

.method private final networksText(ZI)Ljava/lang/String;
    .locals 7
    .param p1, "allBlocked"    # Z
    .param p2, "networkCount"    # I

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->$jacocoInit()[Z

    move-result-object v0

    .line 189
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const v2, 0x7f0e002f

    const/16 v3, 0x80

    aput-boolean v1, v0, v3

    goto :goto_0

    :cond_0
    const v2, 0x7f0e0030

    const/16 v3, 0x81

    aput-boolean v1, v0, v3

    :goto_0
    const/16 v3, 0x82

    aput-boolean v1, v0, v3

    .line 190
    .local v2, "resource":I
    iget-object v3, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->context:Landroid/content/Context;

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context.getString(resour\u2026 networkCount.toString())"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x83

    aput-boolean v1, v0, v4

    return-object v3
.end method

.method static synthetic networksText$default(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;ZIILjava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->$jacocoInit()[Z

    move-result-object p4

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/16 v0, 0x84

    aput-boolean v1, p4, v0

    goto :goto_0

    :cond_0
    const/16 p1, 0x85

    aput-boolean v1, p4, p1

    .line 188
    const/16 p1, 0x86

    aput-boolean v1, p4, p1

    const/4 p1, 0x1

    :goto_0
    and-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_1

    const/16 p3, 0x87

    aput-boolean v1, p4, p3

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    const/16 p3, 0x88

    aput-boolean v1, p4, p3

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->networksText(ZI)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x89

    aput-boolean v1, p4, p1

    return-object p0
.end method

.method private final privacyBanner(Ljava/lang/Long;)I
    .locals 4
    .param p1, "grade"    # Ljava/lang/Long;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->$jacocoInit()[Z

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->settingsStore:Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;

    invoke-interface {v1}, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;->getPrivacyOn()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x3c

    aput-boolean v2, v0, v1

    .line 132
    invoke-direct {p0, p1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->privacyBannerOn(Ljava/lang/Long;)I

    move-result v1

    const/16 v3, 0x3d

    aput-boolean v2, v0, v3

    return v1

    .line 134
    :cond_0
    invoke-direct {p0, p1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->privacyBannerOff(Ljava/lang/Long;)I

    move-result v1

    const/16 v3, 0x3e

    aput-boolean v2, v0, v3

    return v1
.end method

.method private final privacyBannerOff(Ljava/lang/Long;)I
    .locals 7
    .param p1, "grade"    # Ljava/lang/Long;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->$jacocoInit()[Z

    move-result-object v0

    .line 150
    const/16 v1, 0x4e

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 151
    if-nez p1, :cond_0

    const/16 v1, 0x4f

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    const/16 v1, 0x50

    aput-boolean v2, v0, v1

    .line 152
    :goto_0
    const-wide/16 v3, 0x1

    if-nez p1, :cond_1

    const/16 v1, 0x52

    aput-boolean v2, v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-eqz v1, :cond_6

    const/16 v1, 0x53

    aput-boolean v2, v0, v1

    .line 153
    :goto_1
    const-wide/16 v3, 0x2

    if-nez p1, :cond_2

    const/16 v1, 0x55

    aput-boolean v2, v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-eqz v1, :cond_5

    const/16 v1, 0x56

    aput-boolean v2, v0, v1

    .line 154
    :goto_2
    const-wide/16 v3, 0x3

    if-nez p1, :cond_3

    const/16 v1, 0x58

    aput-boolean v2, v0, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-eqz v1, :cond_4

    const/16 v1, 0x59

    aput-boolean v2, v0, v1

    .line 155
    :goto_3
    const v1, 0x7f070083

    const/16 v3, 0x5b

    aput-boolean v2, v0, v3

    goto :goto_4

    .line 154
    :cond_4
    const v1, 0x7f070081

    const/16 v3, 0x5a

    aput-boolean v2, v0, v3

    goto :goto_4

    .line 153
    :cond_5
    const v1, 0x7f07007f

    const/16 v3, 0x57

    aput-boolean v2, v0, v3

    goto :goto_4

    .line 152
    :cond_6
    const v1, 0x7f07007d

    const/16 v3, 0x54

    aput-boolean v2, v0, v3

    goto :goto_4

    .line 151
    :cond_7
    const v1, 0x7f07007b

    const/16 v3, 0x51

    aput-boolean v2, v0, v3

    .line 150
    :goto_4
    const/16 v3, 0x5c

    aput-boolean v2, v0, v3

    return v1
.end method

.method private final privacyBannerOn(Ljava/lang/Long;)I
    .locals 7
    .param p1, "grade"    # Ljava/lang/Long;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->$jacocoInit()[Z

    move-result-object v0

    .line 139
    const/16 v1, 0x3f

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 140
    if-nez p1, :cond_0

    const/16 v1, 0x40

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    const/16 v1, 0x41

    aput-boolean v2, v0, v1

    .line 141
    :goto_0
    const-wide/16 v3, 0x1

    if-nez p1, :cond_1

    const/16 v1, 0x43

    aput-boolean v2, v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-eqz v1, :cond_6

    const/16 v1, 0x44

    aput-boolean v2, v0, v1

    .line 142
    :goto_1
    const-wide/16 v3, 0x2

    if-nez p1, :cond_2

    const/16 v1, 0x46

    aput-boolean v2, v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-eqz v1, :cond_5

    const/16 v1, 0x47

    aput-boolean v2, v0, v1

    .line 143
    :goto_2
    const-wide/16 v3, 0x3

    if-nez p1, :cond_3

    const/16 v1, 0x49

    aput-boolean v2, v0, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-eqz v1, :cond_4

    const/16 v1, 0x4a

    aput-boolean v2, v0, v1

    .line 144
    :goto_3
    const v1, 0x7f070083

    const/16 v3, 0x4c

    aput-boolean v2, v0, v3

    goto :goto_4

    .line 143
    :cond_4
    const v1, 0x7f070082

    const/16 v3, 0x4b

    aput-boolean v2, v0, v3

    goto :goto_4

    .line 142
    :cond_5
    const v1, 0x7f070080

    const/16 v3, 0x48

    aput-boolean v2, v0, v3

    goto :goto_4

    .line 141
    :cond_6
    const v1, 0x7f07007e

    const/16 v3, 0x45

    aput-boolean v2, v0, v3

    goto :goto_4

    .line 140
    :cond_7
    const v1, 0x7f07007c

    const/16 v3, 0x42

    aput-boolean v2, v0, v3

    .line 139
    :goto_4
    const/16 v3, 0x4d

    aput-boolean v2, v0, v3

    return v1
.end method

.method private final privacyGradeIcon(Ljava/lang/Long;)I
    .locals 7
    .param p1, "grade"    # Ljava/lang/Long;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->$jacocoInit()[Z

    move-result-object v0

    .line 161
    const/16 v1, 0x5d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 162
    if-nez p1, :cond_0

    const/16 v1, 0x5e

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    const/16 v1, 0x5f

    aput-boolean v2, v0, v1

    .line 163
    :goto_0
    const-wide/16 v3, 0x1

    if-nez p1, :cond_1

    const/16 v1, 0x61

    aput-boolean v2, v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-eqz v1, :cond_4

    const/16 v1, 0x62

    aput-boolean v2, v0, v1

    .line 164
    :goto_1
    const-wide/16 v3, 0x2

    if-nez p1, :cond_2

    const/16 v1, 0x64

    aput-boolean v2, v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-eqz v1, :cond_3

    const/16 v1, 0x65

    aput-boolean v2, v0, v1

    .line 165
    :goto_2
    const v1, 0x7f07008b

    const/16 v3, 0x67

    aput-boolean v2, v0, v3

    goto :goto_3

    .line 164
    :cond_3
    const v1, 0x7f07008a

    const/16 v3, 0x66

    aput-boolean v2, v0, v3

    goto :goto_3

    .line 163
    :cond_4
    const v1, 0x7f070089

    const/16 v3, 0x63

    aput-boolean v2, v0, v3

    goto :goto_3

    .line 162
    :cond_5
    const v1, 0x7f070088

    const/16 v3, 0x60

    aput-boolean v2, v0, v3

    .line 161
    :goto_3
    const/16 v3, 0x68

    aput-boolean v2, v0, v3

    return v1
.end method

.method private final resetViewState()V
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->$jacocoInit()[Z

    move-result-object v1

    .line 73
    iget-object v2, v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->viewState:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v15, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;

    .line 74
    nop

    .line 75
    const/16 v3, 0x8

    const/16 v16, 0x1

    aput-boolean v16, v1, v3

    .line 76
    invoke-direct/range {p0 .. p0}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->headingText()Ljava/lang/String;

    move-result-object v6

    const/16 v3, 0x9

    aput-boolean v16, v1, v3

    .line 77
    sget-object v3, Lcom/duckduckgo/app/privacymonitor/HttpsStatus;->SECURE:Lcom/duckduckgo/app/privacymonitor/HttpsStatus;

    invoke-direct {v0, v3}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->httpsIcon(Lcom/duckduckgo/app/privacymonitor/HttpsStatus;)I

    move-result v7

    const/16 v3, 0xa

    aput-boolean v16, v1, v3

    .line 78
    sget-object v3, Lcom/duckduckgo/app/privacymonitor/HttpsStatus;->SECURE:Lcom/duckduckgo/app/privacymonitor/HttpsStatus;

    invoke-direct {v0, v3}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->httpsText(Lcom/duckduckgo/app/privacymonitor/HttpsStatus;)Ljava/lang/String;

    move-result-object v8

    .line 79
    const/16 v3, 0xb

    aput-boolean v16, v1, v3

    .line 80
    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v0, v3, v3, v4, v5}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->networksText$default(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;ZIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xc

    aput-boolean v16, v1, v10

    .line 81
    invoke-static {v0, v3, v3, v4, v5}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->majorNetworksText$default(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;ZIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 82
    const/16 v3, 0xd

    aput-boolean v16, v1, v3

    .line 83
    iget-object v3, v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->settingsStore:Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;

    invoke-interface {v3}, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;->getPrivacyOn()Z

    move-result v17

    const/16 v3, 0xe

    aput-boolean v16, v1, v3

    .line 84
    const-wide/16 v3, 0x1

    invoke-direct {v0, v3, v4}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->termsIcon(J)I

    move-result v13

    const/16 v5, 0xf

    aput-boolean v16, v1, v5

    .line 85
    invoke-direct {v0, v3, v4}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->termsText(J)Ljava/lang/String;

    move-result-object v14

    const/16 v3, 0x10

    aput-boolean v16, v1, v3

    .line 73
    const v4, 0x7f070083

    const-string v5, ""

    const v10, 0x7f070061

    const v12, 0x7f07005f

    move-object v3, v15

    move-object v0, v15

    move/from16 v15, v17

    invoke-direct/range {v3 .. v15}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Z)V

    invoke-virtual {v2, v0}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 87
    const/16 v0, 0x11

    aput-boolean v16, v1, v0

    return-void
.end method

.method private final termsIcon(J)I
    .locals 5
    .param p1, "practices"    # J

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->$jacocoInit()[Z

    move-result-object v0

    .line 205
    nop

    .line 206
    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    const v2, 0x7f070063

    const/16 v3, 0xa1

    aput-boolean v1, v0, v3

    goto :goto_0

    .line 207
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    const v2, 0x7f070062

    const/16 v3, 0xa2

    aput-boolean v1, v0, v3

    goto :goto_0

    .line 208
    :cond_1
    const v2, 0x7f070064

    const/16 v3, 0xa3

    aput-boolean v1, v0, v3

    .line 205
    :goto_0
    nop

    .line 209
    const/16 v3, 0xa4

    aput-boolean v1, v0, v3

    return v2
.end method

.method private final termsText(J)Ljava/lang/String;
    .locals 5
    .param p1, "practices"    # J

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->$jacocoInit()[Z

    move-result-object v0

    .line 211
    const/16 v1, 0xa5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 212
    const-wide/16 v3, 0x1

    cmp-long v1, p1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->context:Landroid/content/Context;

    const v3, 0x7f0e0042

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "context.getString(R.string.termsGood)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0xa6

    aput-boolean v2, v0, v3

    goto :goto_0

    .line 213
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->context:Landroid/content/Context;

    const v3, 0x7f0e0041

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "context.getString(R.string.termsBad)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0xa7

    aput-boolean v2, v0, v3

    goto :goto_0

    .line 214
    :cond_1
    const-wide/16 v3, 0x2

    cmp-long v1, p1, v3

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->context:Landroid/content/Context;

    const v3, 0x7f0e0043

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "context.getString(R.string.termsMixed)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0xa8

    aput-boolean v2, v0, v3

    goto :goto_0

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->context:Landroid/content/Context;

    const v3, 0x7f0e0044

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "context.getString(R.string.termsUnknown)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0xa9

    aput-boolean v2, v0, v3

    .line 211
    :goto_0
    nop

    .line 216
    const/16 v3, 0xaa

    aput-boolean v2, v0, v3

    return-object v1
.end method

.method private final updatePrivacyMonitor(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)V
    .locals 21
    .param p1, "monitor"    # Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;

    move-object/from16 v0, p0

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->$jacocoInit()[Z

    move-result-object v1

    .line 90
    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->monitor:Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;

    const/16 v3, 0x12

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 91
    iget-object v3, v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->viewState:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v3}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;

    if-eqz v6, :cond_2

    const/16 v5, 0x13

    aput-boolean v4, v1, v5

    .line 92
    invoke-static/range {p1 .. p1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->getImprovedGrade(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->privacyBanner(Ljava/lang/Long;)I

    move-result v7

    const/16 v5, 0x14

    aput-boolean v4, v1, v5

    .line 93
    invoke-interface/range {p1 .. p1}, Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;->getUri()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_0

    const/16 v5, 0x15

    aput-boolean v4, v1, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const/16 v5, 0x16

    aput-boolean v4, v1, v5

    :goto_0
    const/16 v5, 0x18

    aput-boolean v4, v1, v5

    const-string v5, ""

    goto :goto_1

    :cond_1
    const/16 v8, 0x17

    aput-boolean v4, v1, v8

    :goto_1
    move-object v8, v5

    .line 94
    invoke-direct/range {p0 .. p0}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->headingText()Ljava/lang/String;

    move-result-object v9

    const/16 v5, 0x19

    aput-boolean v4, v1, v5

    .line 95
    invoke-interface/range {p1 .. p1}, Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;->getHttps()Lcom/duckduckgo/app/privacymonitor/HttpsStatus;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->httpsIcon(Lcom/duckduckgo/app/privacymonitor/HttpsStatus;)I

    move-result v10

    const/16 v5, 0x1a

    aput-boolean v4, v1, v5

    .line 96
    invoke-interface/range {p1 .. p1}, Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;->getHttps()Lcom/duckduckgo/app/privacymonitor/HttpsStatus;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->httpsText(Lcom/duckduckgo/app/privacymonitor/HttpsStatus;)Ljava/lang/String;

    move-result-object v11

    const/16 v5, 0x1b

    aput-boolean v4, v1, v5

    .line 97
    invoke-interface/range {p1 .. p1}, Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;->getAllTrackersBlocked()Z

    move-result v5

    invoke-interface/range {p1 .. p1}, Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;->getNetworkCount()I

    move-result v12

    invoke-direct {v0, v5, v12}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->networksIcon(ZI)I

    move-result v13

    const/16 v5, 0x1c

    aput-boolean v4, v1, v5

    .line 98
    invoke-interface/range {p1 .. p1}, Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;->getAllTrackersBlocked()Z

    move-result v5

    invoke-interface/range {p1 .. p1}, Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;->getNetworkCount()I

    move-result v12

    invoke-direct {v0, v5, v12}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->networksText(ZI)Ljava/lang/String;

    move-result-object v12

    const/16 v5, 0x1d

    aput-boolean v4, v1, v5

    .line 99
    invoke-interface/range {p1 .. p1}, Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;->getAllTrackersBlocked()Z

    move-result v5

    invoke-interface/range {p1 .. p1}, Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;->getMajorNetworkCount()I

    move-result v14

    invoke-direct {v0, v5, v14}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->majorNetworksIcon(ZI)I

    move-result v15

    const/16 v5, 0x1e

    aput-boolean v4, v1, v5

    .line 100
    invoke-interface/range {p1 .. p1}, Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;->getAllTrackersBlocked()Z

    move-result v5

    invoke-interface/range {p1 .. p1}, Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;->getMajorNetworkCount()I

    move-result v14

    invoke-direct {v0, v5, v14}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->majorNetworksText(ZI)Ljava/lang/String;

    move-result-object v14

    const/16 v5, 0x1f

    aput-boolean v4, v1, v5

    .line 101
    invoke-interface/range {p1 .. p1}, Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;->getTermsOfService()Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;->getPractices()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->termsIcon(J)I

    move-result v16

    const/16 v4, 0x20

    const/4 v5, 0x1

    aput-boolean v5, v1, v4

    .line 102
    invoke-interface/range {p1 .. p1}, Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;->getTermsOfService()Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;

    move-result-object v4

    move-object/from16 v17, v6

    invoke-virtual {v4}, Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;->getPractices()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->termsText(J)Ljava/lang/String;

    move-result-object v4

    const/16 v18, 0x0

    const/16 v19, 0x800

    const/16 v20, 0x0

    const/16 v5, 0x21

    const/4 v6, 0x1

    aput-boolean v6, v1, v5

    .line 91
    move-object/from16 v6, v17

    move-object/from16 v17, v4

    invoke-static/range {v6 .. v20}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->copy$default(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;ZILjava/lang/Object;)Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;

    move-result-object v4

    const/16 v5, 0x22

    const/4 v6, 0x1

    aput-boolean v6, v1, v5

    goto :goto_2

    :cond_2
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x23

    aput-boolean v6, v1, v5

    :goto_2
    invoke-virtual {v3, v4}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 104
    const/16 v3, 0x24

    aput-boolean v6, v1, v3

    return-void
.end method


# virtual methods
.method public final getShouldReloadPage()Z
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->$jacocoInit()[Z

    move-result-object v0

    .line 61
    iget-boolean v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->privacyInitiallyOn:Z

    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->settingsStore:Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;

    invoke-interface {v2}, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;->getPrivacyOn()Z

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    aput-boolean v3, v0, v3

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    :goto_0
    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    return v1
.end method

.method public final getViewState()Landroid/arch/lifecycle/MutableLiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->viewState:Landroid/arch/lifecycle/MutableLiveData;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final onPrivacyMonitorChanged(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)V
    .locals 3
    .param p1, "monitor"    # Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->$jacocoInit()[Z

    move-result-object v0

    .line 64
    iput-object p1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->monitor:Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;

    .line 65
    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 v2, 0x4

    aput-boolean v1, v0, v2

    .line 66
    invoke-direct {p0}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->resetViewState()V

    const/4 v2, 0x5

    aput-boolean v1, v0, v2

    goto :goto_0

    .line 68
    :cond_0
    invoke-direct {p0, p1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->updatePrivacyMonitor(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)V

    const/4 v2, 0x6

    aput-boolean v1, v0, v2

    .line 69
    :goto_0
    nop

    .line 70
    const/4 v2, 0x7

    aput-boolean v1, v0, v2

    return-void
.end method

.method public final onPrivacyToggled(Z)V
    .locals 21
    .param p1, "enabled"    # Z

    move-object/from16 v0, p0

    move/from16 v15, p1

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->$jacocoInit()[Z

    move-result-object v16

    .line 107
    iget-object v1, v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->viewState:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;

    const/16 v17, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->getToggleEnabled()Z

    move-result v1

    if-ne v15, v1, :cond_0

    const/16 v1, 0x25

    aput-boolean v17, v16, v1

    goto/16 :goto_3

    :cond_0
    const/16 v1, 0x26

    aput-boolean v17, v16, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x27

    aput-boolean v17, v16, v1

    .line 108
    :goto_0
    iget-object v1, v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->settingsStore:Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;

    invoke-interface {v1, v15}, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;->setPrivacyOn(Z)V

    const/16 v1, 0x28

    aput-boolean v17, v16, v1

    .line 109
    iget-object v14, v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->viewState:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v14}, Landroid/arch/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/16 v3, 0x29

    aput-boolean v17, v16, v3

    .line 110
    invoke-direct/range {p0 .. p0}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->headingText()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/16 v5, 0x2a

    aput-boolean v17, v16, v5

    .line 111
    iget-object v5, v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->monitor:Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;

    if-eqz v5, :cond_2

    invoke-static {v5}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->getImprovedGrade(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v5, 0x2b

    aput-boolean v17, v16, v5

    goto :goto_1

    :cond_2
    const/16 v5, 0x2c

    aput-boolean v17, v16, v5

    :goto_1
    invoke-direct {v0, v2}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->privacyBanner(Ljava/lang/Long;)I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 112
    const/16 v18, 0x7fa

    const/16 v19, 0x0

    const/16 v13, 0x2d

    aput-boolean v17, v16, v13

    .line 109
    move/from16 v13, p1

    move-object/from16 v20, v14

    move/from16 v14, v18

    move-object/from16 v15, v19

    invoke-static/range {v1 .. v15}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->copy$default(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;ZILjava/lang/Object;)Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;

    move-result-object v2

    const/16 v1, 0x2e

    aput-boolean v17, v16, v1

    goto :goto_2

    :cond_3
    move-object/from16 v20, v14

    const/16 v1, 0x2f

    aput-boolean v17, v16, v1

    :goto_2
    move-object/from16 v1, v20

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/16 v1, 0x30

    aput-boolean v17, v16, v1

    .line 115
    :goto_3
    const/16 v1, 0x31

    aput-boolean v17, v16, v1

    return-void
.end method
