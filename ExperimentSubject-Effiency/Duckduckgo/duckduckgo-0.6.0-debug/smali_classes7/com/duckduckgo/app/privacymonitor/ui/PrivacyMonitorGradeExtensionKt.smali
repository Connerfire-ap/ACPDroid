.class public final Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;
.super Ljava/lang/Object;
.source "PrivacyMonitorGradeExtension.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u001a\u0010\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0001H\u0002\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u001b\u0010\u0005\u001a\u00020\u0006*\u00020\u00028F\u00a2\u0006\u000c\u0012\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0015\u0010\u000b\u001a\u00020\u0001*\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\"\u001b\u0010\u000f\u001a\u00020\u0006*\u00020\u00028F\u00a2\u0006\u000c\u0012\u0004\u0008\u0010\u0010\u0008\u001a\u0004\u0008\u0011\u0010\n\"\u0015\u0010\u0012\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0004\"\u001b\u0010\u0014\u001a\u00020\u0006*\u00020\u00028F\u00a2\u0006\u000c\u0012\u0004\u0008\u0015\u0010\u0008\u001a\u0004\u0008\u0016\u0010\n\"\u0015\u0010\u0017\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0004\"\u0015\u0010\u0019\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0004\u00a8\u0006\u001c"
    }
    d2 = {
        "baseScore",
        "",
        "Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;",
        "getBaseScore",
        "(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)I",
        "grade",
        "",
        "grade$annotations",
        "(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)V",
        "getGrade",
        "(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)J",
        "gradingScore",
        "Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;",
        "getGradingScore",
        "(Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;)I",
        "improvedGrade",
        "improvedGrade$annotations",
        "getImprovedGrade",
        "improvedScore",
        "getImprovedScore",
        "potentialGrade",
        "potentialGrade$annotations",
        "getPotentialGrade",
        "potentialScore",
        "getPotentialScore",
        "score",
        "getScore",
        "calculateGrade",
        "duckduckgo-0.6.0_debug"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2f8bc05f6f73aa6cL    # 1.1702453790741904E-79

    const/16 v2, 0x37

    const-string v3, "com/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private static final calculateGrade(I)J
    .locals 5
    .param p0, "score"    # I

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->$jacocoInit()[Z

    move-result-object v0

    .line 76
    nop

    .line 77
    const/4 v1, 0x1

    if-gtz p0, :cond_0

    const-wide/16 v2, 0x0

    const/16 v4, 0x21

    aput-boolean v1, v0, v4

    goto :goto_0

    .line 78
    :cond_0
    if-ne p0, v1, :cond_1

    const-wide/16 v2, 0x1

    const/16 v4, 0x22

    aput-boolean v1, v0, v4

    goto :goto_0

    .line 79
    :cond_1
    const/4 v2, 0x2

    if-ne p0, v2, :cond_2

    const-wide/16 v2, 0x2

    const/16 v4, 0x23

    aput-boolean v1, v0, v4

    goto :goto_0

    .line 80
    :cond_2
    const-wide/16 v2, 0x3

    const/16 v4, 0x24

    aput-boolean v1, v0, v4

    .line 76
    :goto_0
    const/16 v4, 0x25

    aput-boolean v1, v0, v4

    return-wide v2
.end method

.method private static final getBaseScore(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)I
    .locals 8
    .param p0, "$this$baseScore"    # Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    const/4 v1, 0x1

    .local v1, "score":I
    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 45
    invoke-interface {p0}, Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;->getMemberNetwork()Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    move-result-object v2

    if-nez v2, :cond_0

    const/16 v2, 0xb

    aput-boolean v3, v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->getPercentageOfPages()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    const/16 v2, 0xc

    aput-boolean v3, v0, v2

    :goto_0
    const/4 v2, 0x0

    const/16 v4, 0xe

    aput-boolean v3, v0, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0xd

    aput-boolean v3, v0, v4

    :goto_1
    int-to-double v4, v2

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    add-int/2addr v1, v2

    const/16 v2, 0xf

    aput-boolean v3, v0, v2

    .line 46
    invoke-interface {p0}, Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;->getTermsOfService()Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;

    move-result-object v2

    invoke-static {v2}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->getGradingScore(Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;)I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x10

    aput-boolean v3, v0, v2

    .line 47
    invoke-interface {p0}, Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;->getHttps()Lcom/duckduckgo/app/privacymonitor/HttpsStatus;

    move-result-object v2

    sget-object v4, Lcom/duckduckgo/app/privacymonitor/HttpsStatus;->SECURE:Lcom/duckduckgo/app/privacymonitor/HttpsStatus;

    if-ne v2, v4, :cond_2

    const/16 v2, 0x11

    aput-boolean v3, v0, v2

    goto :goto_2

    .line 48
    :cond_2
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x12

    aput-boolean v3, v0, v2

    .line 50
    :goto_2
    const/16 v2, 0x13

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static final getGrade(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)J
    .locals 5
    .param p0, "$this$grade"    # Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "$this$grade"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x19

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 63
    invoke-static {p0}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->getScore(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)I

    move-result v1

    invoke-static {v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->calculateGrade(I)J

    move-result-wide v3

    const/16 v1, 0x1a

    aput-boolean v2, v0, v1

    return-wide v3
.end method

.method public static final getGradingScore(Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;)I
    .locals 6
    .param p0, "$this$gradingScore"    # Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "$this$gradingScore"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x26

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 86
    invoke-virtual {p0}, Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;->getClassification()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    const/16 v1, 0x27

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    const/16 v1, 0x28

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 91
    :pswitch_0
    const-string v5, "E"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x2d

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    const/16 v3, 0x32

    aput-boolean v2, v0, v3

    return v1

    .line 90
    :pswitch_1
    const-string v5, "D"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x2c

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_2
    const/16 v1, 0x31

    aput-boolean v2, v0, v1

    return v2

    .line 89
    :pswitch_2
    const-string v5, "C"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x2b

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_3
    const/16 v1, 0x30

    aput-boolean v2, v0, v1

    return v4

    .line 88
    :pswitch_3
    const-string v5, "B"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x2a

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_4
    const/16 v1, 0x2f

    aput-boolean v2, v0, v1

    return v4

    .line 87
    :pswitch_4
    const-string v5, "A"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x29

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_5
    const/16 v1, 0x2e

    aput-boolean v2, v0, v1

    return v3

    .line 92
    :goto_0
    nop

    .line 93
    const/16 v1, 0x33

    aput-boolean v2, v0, v1

    .line 94
    invoke-virtual {p0}, Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;->getScore()I

    move-result v1

    if-gez v1, :cond_6

    const/16 v1, 0x34

    aput-boolean v2, v0, v1

    return v3

    .line 95
    :cond_6
    invoke-virtual {p0}, Lcom/duckduckgo/app/privacymonitor/model/TermsOfService;->getScore()I

    move-result v1

    if-lez v1, :cond_7

    const/16 v1, 0x35

    aput-boolean v2, v0, v1

    return v2

    .line 96
    :cond_7
    nop

    .line 97
    const/16 v1, 0x36

    aput-boolean v2, v0, v1

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getImprovedGrade(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)J
    .locals 5
    .param p0, "$this$improvedGrade"    # Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "$this$improvedGrade"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x1f

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 71
    invoke-static {p0}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->getImprovedScore(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)I

    move-result v1

    invoke-static {v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->calculateGrade(I)J

    move-result-wide v3

    const/16 v1, 0x20

    aput-boolean v2, v0, v1

    return-wide v3
.end method

.method public static final getImprovedScore(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)I
    .locals 4
    .param p0, "$this$improvedScore"    # Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "$this$improvedScore"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x14

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 55
    invoke-interface {p0}, Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;->getAllTrackersBlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x15

    aput-boolean v2, v0, v1

    .line 56
    invoke-static {p0}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->getPotentialScore(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)I

    move-result v1

    const/16 v3, 0x16

    aput-boolean v2, v0, v3

    return v1

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->getScore(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)I

    move-result v1

    const/16 v3, 0x17

    aput-boolean v2, v0, v3

    return v1
.end method

.method public static final getPotentialGrade(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)J
    .locals 5
    .param p0, "$this$potentialGrade"    # Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "$this$potentialGrade"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x1c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 67
    invoke-static {p0}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->getPotentialScore(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)I

    move-result v1

    invoke-static {v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->calculateGrade(I)J

    move-result-wide v3

    const/16 v1, 0x1d

    aput-boolean v2, v0, v1

    return-wide v3
.end method

.method public static final getPotentialScore(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)I
    .locals 4
    .param p0, "$this$potentialScore"    # Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "$this$potentialScore"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 39
    invoke-static {p0}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->getBaseScore(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)I

    move-result v1

    const/16 v3, 0x9

    aput-boolean v2, v0, v3

    return v1
.end method

.method public static final getScore(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)I
    .locals 7
    .param p0, "$this$score"    # Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "$this$score"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 27
    invoke-static {p0}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->getBaseScore(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)I

    move-result v1

    .local v1, "score":I
    aput-boolean v2, v0, v2

    .line 28
    invoke-interface {p0}, Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;->getTrackerCount()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v1, v3

    const/4 v3, 0x2

    aput-boolean v2, v0, v3

    .line 29
    invoke-interface {p0}, Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;->getMajorNetworkCount()I

    move-result v3

    if-gtz v3, :cond_0

    const/4 v3, 0x3

    aput-boolean v2, v0, v3

    goto :goto_0

    .line 30
    :cond_0
    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x4

    aput-boolean v2, v0, v3

    .line 32
    :goto_0
    invoke-interface {p0}, Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;->getHasObscureTracker()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x5

    aput-boolean v2, v0, v3

    goto :goto_1

    .line 33
    :cond_1
    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x6

    aput-boolean v2, v0, v3

    .line 35
    :goto_1
    const/4 v3, 0x7

    aput-boolean v2, v0, v3

    return v1
.end method

.method public static synthetic grade$annotations(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)V
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->$jacocoInit()[Z

    move-result-object p0

    const/16 v0, 0x18

    const/4 v1, 0x1

    aput-boolean v1, p0, v0

    return-void
.end method

.method public static synthetic improvedGrade$annotations(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)V
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->$jacocoInit()[Z

    move-result-object p0

    const/16 v0, 0x1e

    const/4 v1, 0x1

    aput-boolean v1, p0, v0

    return-void
.end method

.method public static synthetic potentialGrade$annotations(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)V
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyMonitorGradeExtensionKt;->$jacocoInit()[Z

    move-result-object p0

    const/16 v0, 0x1b

    const/4 v1, 0x1

    aput-boolean v1, p0, v0

    return-void
.end method
