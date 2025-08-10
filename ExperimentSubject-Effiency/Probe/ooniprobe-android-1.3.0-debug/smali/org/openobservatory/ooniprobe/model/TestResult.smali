.class public Lorg/openobservatory/ooniprobe/model/TestResult;
.super Ljava/lang/Object;
.source "TestResult.java"


# instance fields
.field public anomaly:I

.field public final input:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "anomaly"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "anomaly"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/model/TestResult;->input:Ljava/lang/String;

    .line 9
    iput p2, p0, Lorg/openobservatory/ooniprobe/model/TestResult;->anomaly:I

    .line 10
    return-void
.end method
