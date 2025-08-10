.class public final Ldagger/android/support/R;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/android/support/R$anim;,
        Ldagger/android/support/R$attr;,
        Ldagger/android/support/R$bool;,
        Ldagger/android/support/R$color;,
        Ldagger/android/support/R$dimen;,
        Ldagger/android/support/R$drawable;,
        Ldagger/android/support/R$id;,
        Ldagger/android/support/R$integer;,
        Ldagger/android/support/R$layout;,
        Ldagger/android/support/R$string;,
        Ldagger/android/support/R$style;,
        Ldagger/android/support/R$styleable;
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Ldagger/android/support/R;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x305593c7d4cf319L

    const/4 v2, 0x1

    const-string v3, "dagger/android/support/R"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Ldagger/android/support/R;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Ldagger/android/support/R;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
