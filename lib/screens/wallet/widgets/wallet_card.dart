
import 'package:flutter/material.dart';

class WalletDashboardCard extends StatefulWidget {
  const WalletDashboardCard({
    super.key,
    required this.textData,
    required this.child,
    required this.background,
    required this.width,
    required this.height,
    required this.isLoading,
  });

  final String textData;
  final Widget child;
  final Color background;
  final double width;
  final double height;
  final bool isLoading;

  @override
  State<WalletDashboardCard> createState() => _WalletDashboardCardState();
}

class _WalletDashboardCardState extends State<WalletDashboardCard> {
  @override
  Widget build(BuildContext context) {
    return !widget.isLoading
        ? Material(
            color: widget.background,
            borderRadius: BorderRadius.circular(16.0),
            elevation: 5.0,
            shadowColor: Colors.grey.withOpacity(0.3),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              width: widget.width,
              height: widget.height,
              decoration: BoxDecoration(
                color: widget.background,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(4, 4),
                  ),
                  BoxShadow(
                    color: Colors.white.withOpacity(0.7),
                    blurRadius: 10,
                    offset: const Offset(-4, -4),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: widget.background,
                      borderRadius: BorderRadius.circular(16.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 5,
                          offset: const Offset(2, 2),
                        ),
                        BoxShadow(
                          color: Colors.white.withOpacity(0.7),
                          blurRadius: 5,
                          offset: const Offset(-2, -2),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        widget.textData,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  widget.child,
                  const SizedBox(height: 8.0),
                ],
              ),
            ),
          )
        : Material(
            color: widget.background,
            borderRadius: BorderRadius.circular(16.0),
            elevation: 5.0,
            shadowColor: Colors.grey.withOpacity(0.3),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              width: widget.width,
              height: widget.height,
              decoration: BoxDecoration(
                color: widget.background,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(4, 4),
                  ),
                  BoxShadow(
                    color: Colors.white.withOpacity(0.7),
                    blurRadius: 10,
                    offset: const Offset(-4, -4),
                  ),
                ],
              ),
              child: const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                ),
              ),
            ),
          );
  }
}