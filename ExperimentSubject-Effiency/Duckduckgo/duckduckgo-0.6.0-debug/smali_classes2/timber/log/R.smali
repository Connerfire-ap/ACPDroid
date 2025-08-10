.class public final Ltimber/log/R;
.super Ljava/lang/Object;


# static fields
.field private static transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Ltimber/log/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x24c541fe796fe87dL    # 1.497441965755928E-131

    const/4 v2, 0x1

    const-string v3, "timber/log/R"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Ltimber/log/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Ltimber/log/R;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
